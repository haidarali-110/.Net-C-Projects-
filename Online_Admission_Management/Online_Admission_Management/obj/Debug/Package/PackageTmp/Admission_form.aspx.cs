using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Admission_Management
{
    public partial class Admission_form : System.Web.UI.Page
    {
        public static string connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            //string connstring = ConfigurationManager.ConnectionStrings["conAdmission"].ConnectionString;
            //SqlConnection con = new SqlConnection(connstring);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          // Retrieve values from form fields

            DateTime birthDate = Convert.ToDateTime(txtbdate.Text);
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                   SqlCommand command = new SqlCommand("INSERT INTO AdmissionTable VALUES('" + txtname.Text + "','" 
                       + txtaddress.Text + "' , '" + txtmono.Text + "' ,'" + txtemail.Text + "' , '" + birthDate + "' , '" 
                       + DropDownList1.SelectedItem.Text + "' , '" + DropDownList2.SelectedItem.Text + "', '" 
                       + RadioButtonList1.SelectedItem.Text + "' ,'" + txtpmy.Text + "' ,'" + txtseat.Text + "' , '"
                       + txtmark.Text + "' , '" + txtpercentage.Text + "')", con);

          
                    command.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    string errorMsg = "Insert Error: " + ex.Message;
                }
            }
            Session["FullName"]=txtname.Text;
            Session["Address"] = txtaddress.Text;
            Session["Mo_Number"] = txtmono.Text;
            Session["Email"] = txtemail.Text;
            Session["Birth_Date"] = birthDate;
            Session["Geender"] = DropDownList1.SelectedItem.Text;
            Session["Category"] = DropDownList2.SelectedItem.Text;
            Session["Course"] = RadioButtonList1.SelectedItem.Text;
            Session["Passing_M_Y"] = txtpmy.Text;
            Session["SeatNo"] = txtseat.Text;
            Session["Marks"] = txtmark.Text;
            Session["Percentage"] = txtpercentage.Text;

            Server.Transfer("print_download.aspx");
        }



    }
}

    
   