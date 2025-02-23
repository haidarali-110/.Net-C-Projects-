using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace library_management1
{
    public partial class ShowRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchID = txtSearchID.Text.Trim();
            if (!string.IsNullOrEmpty(searchID))
            {
                SqlDataSource4.SelectCommand = "SELECT DISTINCT [ID], [FullName], [Email], [Address],[Phone],[DOB],[Gender], [ValidUpTo] FROM [Register1] WHERE ID = " + searchID;
            }
            else
            {
                SqlDataSource4.SelectCommand = "SELECT DISTINCT [ID], [FullName], [Email], [Address],[Phone],[DOB],[Gender],  [ValidUpTo] FROM [Register1]";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            
            usergv.DataBind();

            SqlCommand cmd = new SqlCommand("  delete from Register1 where id like'" + txtSearchID.Text + "%'", conn);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

     
            usergv.DataBind();


            txtSearchID.Text = "USER DELETED!";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Button.aspx");
        }
    }
}