using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace DemoApplicationRegister
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            Calendar1.Attributes.Add("style", "position:absolute");//to make textbox and calender image on same top allignment..
            rdoMale.Checked=true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text!=""||ddlMarried.SelectedIndex!=0)
            {
                CreateNewUser();
            }
            else
            {
                lblMsg.Text = "";
                lblMsg.Text = "Please fill all fields then click submit";
            }
        }
        private void CreateNewUser()
        {
            try
            {
                int gender = 0;
                if (rdoFemale.Checked == true)
                {
                    gender = 2;
                }
                else
                {
                    gender = 1;
                }


                byte[] bytes;
                BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream);
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));
                string filetype = FileUpload1.PostedFile.ContentType;

                if (conn1.State == ConnectionState.Closed)
                    conn1.Open();
                SqlCommand Cmdinsert = new SqlCommand("spInsertEmpRegister", conn1);
                Cmdinsert.CommandType = CommandType.StoredProcedure;
                Cmdinsert.Parameters.AddWithValue("@Name", txtName.Text);
                Cmdinsert.Parameters.AddWithValue("@Dob", DateTime.Parse(txtDOB.Text));
                Cmdinsert.Parameters.AddWithValue("@Gender", gender);
                if (chkAadhar.Checked == true)
                {
                    Cmdinsert.Parameters.AddWithValue("@Adhar", chkAadhar.Text);
                    
                }
              
                if (chkPAN.Checked == true)
                {
                    Cmdinsert.Parameters.AddWithValue("@Pan", chkPAN.Text);
                   
                }
                float salary = 0;
                if (txtSalary.Text!="")
                {
                    Cmdinsert.Parameters.AddWithValue("@Salary", float.Parse(txtSalary.Text));
                }
               else
                {
                    Cmdinsert.Parameters.AddWithValue("@Salary", salary);
                }
                Cmdinsert.Parameters.AddWithValue("@Marriedstatus", ddlMarried.SelectedItem.Value);
                Cmdinsert.Parameters.AddWithValue("@Email", txtEmail.Text);
                Cmdinsert.Parameters.AddWithValue("@Phone", txtPhone.Text);
                Cmdinsert.Parameters.AddWithValue("@FilesName",@"Images/" + filename);
                Cmdinsert.Parameters.AddWithValue("@FileData", bytes);
                Cmdinsert.Parameters.AddWithValue("@FileType", filetype);

                int result = Cmdinsert.ExecuteNonQuery();
                if (result > 0)
                {
                    lblMsg.Text = "";
                    lblMsg.Text = "Data Inserted Successfuly.";
                }
                else
                {
                    lblMsg.Text = "";
                    lblMsg.Text = "Data Insertion Failure.";
                }
            }
            catch (Exception ex)
            {

                lblMsg.Text = "";
                lblMsg.Text = ex.ToString();
            }
           
            

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {
            //DateTime today = DateTime.Today;
            //DateTime dob = Convert.ToDateTime(txtDOB.Text);
            ////DateTime doj = Convert.ToDateTime(DateTime.Now);
            //TimeSpan ts = today - dob;
            //lblAge.Text = "";
            //lblAge.Text = Math.Round(ts.TotalDays / 365.25).ToString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            
            //DateTime today = DateTime.Today;
            //DateTime dob = Convert.ToDateTime(txtDOB.Text);
            //////DateTime doj = Convert.ToDateTime(DateTime.Now);
            //TimeSpan ts = today - dob;
            //lblAge.Text = "";
            //lblAge.Text = Math.Round(ts.TotalDays / 365.25).ToString();
            Calendar1.Visible = false;
        }
    }
}