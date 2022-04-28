using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DemoApplicationRegister
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["user"]!=null)
                    {
                        lblUsername.Text = "";
                        lblUsername.Text = Session["user"].ToString();
                    }
                    else
                    {
                        lblUsername.Text = "";
                        lblUsername.Text = "There is no any user session exists.";
                    }
                    DataSet ds = loadData();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                    Repeater1.DataSource = ds;
                    Repeater1.DataBind();
                    conn1.Close();
                }
                catch (Exception )
                {

                    throw;
                }
            }
        }
        private DataSet loadData()
        {
            if (conn1.State == ConnectionState.Closed)
                conn1.Open();
            SqlCommand cmdGetdata = new SqlCommand("spGetData", conn1);
            cmdGetdata.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da =new  SqlDataAdapter(cmdGetdata);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            Session["username"] = null;
            Session.Clear();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataSet ds = loadData();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}