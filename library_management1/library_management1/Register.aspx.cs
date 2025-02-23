using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace library_management1
{
    public partial class Ragister : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|library_management.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Register1 values  ('" + txtFullName.Text + "' ,'" + txtEmail.Text + "', '" + txtAddress.Text + "', '" + txtPhone.Text + "', '" + txtDOB.Text + "', '" + txtGender.Text + "' ,'" + validdate.Text + "')", conn);

            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            btnRegister.Text = "insert successful";
      
            Response.Write("<script>alert(' Register successfully!');</script>");
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtPhone.Text = "";
            txtDOB.Text = "";
            txtGender.Text = "";
            validdate.Text = "";

           
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Button.aspx");
        }
    }
}