using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Online_Admission_Management
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Admin_login where Email='" + txtemail.Text + "' AND Password='" + txtpassword.Text + "'", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                Response.Write("<Script>alert('Login Successful...')</Script>");
                txtemail.Text = "";
                txtpassword.Text = "";
                Response.Redirect("ShowS_Details.aspx");
            }
            else
            {

                Response.Write("Login Unsuccessful...");
                txtemail.Text = "";
                txtpassword.Text = "";
            }
            con.Close();
        }
    }
}