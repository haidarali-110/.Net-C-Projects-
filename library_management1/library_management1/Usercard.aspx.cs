using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace library_management1
{
    public partial class Usercard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string libraryID = txtLibraryID.Text.Trim();
            if (!string.IsNullOrEmpty(libraryID))
            {
                GetUserDetails(libraryID);
            }
        }

        private void GetUserDetails(string libraryID)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|library_management.mdf;Integrated Security=True;User Instance=True"; 
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT FullName, ID, ValidUpTo FROM Register1 WHERE Id = @LibraryID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@LibraryID", libraryID);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lblName.Text = reader["FullName"].ToString();
                    lblLibraryID.Text = reader["ID"].ToString();
                    lblValidTill.Text = Convert.ToDateTime(reader["ValidUpTo"]).ToString("dd-MMM-yyyy");


                    imgBarcode.ImageUrl = "~/IMG/Barcode.webp";


                    ClientScript.RegisterStartupScript(this.GetType(), "showCard", "showCard();", true);
                }
                else
                {
                    lblName.Text = "";
                    lblLibraryID.Text = "";
                    lblValidTill.Text = "";
                    imgBarcode.ImageUrl = "";


                    ClientScript.RegisterStartupScript(this.GetType(), "hideCard", "hideCard();", true);
                }
            }
        }
    }
}