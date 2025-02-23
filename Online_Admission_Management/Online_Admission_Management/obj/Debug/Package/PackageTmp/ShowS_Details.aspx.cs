using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Online_Admission_Management
{
    public partial class ShowS_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind1();
                gvbind2();
            }
        }

        private void gvbind2()
        {
            SqlConnection SC = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True");
            try
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM AdmissionTable", SC))
                {
                    SC.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(sdr);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();

                    }
                    SC.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
        private void gvbind1()
        {
            SqlConnection SC = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True");
            try
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM RagisterTable", SC))
                {
                    SC.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(sdr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                    SC.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }

        }

      


        protected void Button1_Click(object sender, EventArgs e)
        {
            string searchText = TextBox1.Text.Trim();
            string query = "SELECT * FROM dbo.RagisterTable WHERE Name LIKE '%' + @SearchText + '%' OR Gmail LIKE '%' + @SearchText + '%'";

            using (SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@SearchText", searchText);
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }

        }
        protected void ButtonSearch2_Click(object sender, EventArgs e)
        {
            string searchText = TextBox2.Text.Trim();
            string query = "SELECT * FROM dbo.Admissionable WHERE FullName LIKE '%' + @SearchText + '%' OR Email LIKE '%' + @SearchText + '%'";
            using (SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@SearchText", searchText);
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
            }
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }

    
    }
}