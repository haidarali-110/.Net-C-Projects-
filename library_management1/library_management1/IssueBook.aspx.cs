using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace library_management1
{
    public partial class IssueBook : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|library_management.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void btnIssue_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO IssueBook values  ('" + txtName.Text + "', '" + txtBookID.Text + "', '" + txtBookName.Text + "', '" + txtAuthor.Text + "', '" + txtIssueDate.Text + "')", conn);

            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            // Book issue logic (store data in database, etc.)
            Response.Write("<script>alert('Book issued successfully!');</script>");
        }
    }
}