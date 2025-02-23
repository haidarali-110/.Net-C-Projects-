using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Admission_Management
{
    public partial class Register : System.Web.UI.Page
    {
        public static string connstring = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        //  SqlConnection con = new SqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SqlConnection con = new SqlConnection(connstring))
            {
                try
                {
                    con.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO RagisterTable (Name, Gmail, password, confirmPassword, city, gender) VALUES (@Name, @Gmail, @password, @confirmPassword, @city, @gender)", con);
                    command.Parameters.Add("@Name", System.Data.SqlDbType.NVarChar);
                    command.Parameters.Add("@Gmail", System.Data.SqlDbType.NVarChar);
                    command.Parameters.Add("@password", System.Data.SqlDbType.NVarChar);
                    command.Parameters.Add("@confirmPassword", System.Data.SqlDbType.NVarChar);
                    command.Parameters.Add("@city", System.Data.SqlDbType.NVarChar);
                    command.Parameters.Add("@gender", System.Data.SqlDbType.NVarChar);

                    command.Parameters["@Name"].Value = TextBox1.Text;
                    command.Parameters["@Gmail"].Value = TextBox4.Text;
                    command.Parameters["@password"].Value = TextBox2.Text;
                    command.Parameters["@confirmPassword"].Value = TextBox3.Text;
                    command.Parameters["@city"].Value = DropDownList1.SelectedItem.ToString();
                    command.Parameters["@gender"].Value = RadioButtonList1.SelectedItem.ToString();
                     int i = command.ExecuteNonQuery();
                    con.Close();
                    if (i !=null)
                    {
                        Server.Transfer("Admission_form.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ragister first')</script>");
                    }
                }
                catch (Exception ex)
                {
                    string errorMsg = "Insert Error: " + ex.Message;
                    // Handle the error or log it
                }

               



            }
        }
    }
}