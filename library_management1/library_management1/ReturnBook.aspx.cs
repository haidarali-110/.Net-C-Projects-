using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace library_management1
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|library_management.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO ReturnBook values  ('" + txtBookId.Text + "', '" + txtUserId.Text + "', '" + txtReturnDate.Text + "' )", conn);

            conn.Open();
            cmd.ExecuteNonQuery();



            SqlCommand cmd1 = new SqlCommand("Delete from IssueBook where Book_id='" + txtBookId.Text + "'", conn);
            cmd1.ExecuteNonQuery();

            conn.Close();
            Response.Write("<script>alert('return successfull!!');</script>");

           
        }
    }
}