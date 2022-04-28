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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "Message", "<script type=text/javascript>alert('Connection Successful!');</script>", true);
            if (!IsPostBack)
            {
                if (Request.Cookies["userid"] != null)
                    txtUsername.Text = Request.Cookies["userid"].Value;
                if (Request.Cookies["pwd"] != null)
                    txtPassword.Attributes.Add("value", Request.Cookies["pwd"].Value);
                if (Request.Cookies["userid"] != null && Request.Cookies["pwd"] != null)
                    chkRemember.Checked = true;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text!=""||txtPassword.Text!="")
            {
                try
                {
                    LoginSystem();
                }
                catch (Exception ex)
                {

                    lblMsg.Text = "";
                    lblMsg.Text = ex.ToString();
                }
            }
            else
            {
                lblMsg.Text = "";
                lblMsg.Text = "Username or Password can not be blank";
            }
        }
        private void LoginSystem()
        {
            if (conn1.State == ConnectionState.Closed)
                conn1.Open();
            SqlCommand cmdGetLoginCred = new SqlCommand("spGetLoginCred",conn1);
            cmdGetLoginCred.CommandType = CommandType.StoredProcedure;
            cmdGetLoginCred.Parameters.AddWithValue("@username",txtUsername.Text);
            cmdGetLoginCred.Parameters.AddWithValue("@password", txtPassword.Text);
            int count = (int)cmdGetLoginCred.ExecuteScalar();
            if (count==1)
            {
                Session["user"] = txtUsername.Text;

                if (chkRemember.Checked == true)
                {
                    Response.Cookies["userid"].Value = txtUsername.Text;
                    Response.Cookies["pwd"].Value = txtPassword.Text;
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);
                }

                Response.Redirect("WebForm2.aspx");
                conn1.Close();
            }
            else
            {
                lblMsg.Text = "";
                lblMsg.Text = "Incorrect Username or Password!!";
                conn1.Close();
            }
        }
    }
}