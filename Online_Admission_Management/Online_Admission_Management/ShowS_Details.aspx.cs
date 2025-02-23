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


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind1();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind1();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView1.Rows[e.RowIndex];

            // Update data in your database using the values in the GridView
            string name = ((TextBox)row.FindControl("TextBoxName")).Text;
            string gmail = ((TextBox)row.FindControl("TextBoxGmail")).Text;
            string password = ((TextBox)row.FindControl("TextBoxPassword")).Text;
            string confirmPwd = ((TextBox)row.FindControl("TextBoxConfirmPwd")).Text;
            string city = ((TextBox)row.FindControl("TextBoxCity")).Text;
            string gender = ((TextBox)row.FindControl("TextBoxGender")).Text;

            UpdateData(id, name, gmail, password, confirmPwd, city, gender);

            GridView1.EditIndex = -1;
            gvbind1();
        }
        private void UpdateData(int id, string name, string gmail, string password, string confirmPwd, string city, string gender)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("UPDATE RagisterTable SET Name=@Name, Gmail=@Gmail, Password=@Password, ConfirmPassword=@ConfirmPassword, City=@City, Gender=@Gender WHERE Id=@Id", connection);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Gmail", gmail);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@ConfirmPassword", confirmPwd);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Gender", gender);

                cmd.ExecuteNonQuery();
            }
        }
        private void DeleteData(int id)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM RagisterTable WHERE Id=@Id", connection);
                cmd.Parameters.AddWithValue("@Id", id);

                cmd.ExecuteNonQuery();
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            // Implement logic to delete data in your database
            DeleteData(id);

            gvbind1();
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

          

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            gvbind2();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView2.Rows[e.RowIndex];

            string fullName = ((TextBox)row.FindControl("txtFullName")).Text;
            string address = ((TextBox)row.FindControl("txtAddress")).Text;
            string mono = ((TextBox)row.FindControl("txtmono")).Text;
            string email = ((TextBox)row.FindControl("txtemail")).Text;
            string bdate = ((TextBox)row.FindControl("txtbdate")).Text;
            string gender = ((TextBox)row.FindControl("DropDownList1")).Text;
            string category = ((TextBox)row.FindControl("DropDownList2")).Text;
            string course = ((TextBox)row.FindControl("RadioButtonList1")).Text;
            string pmy = ((TextBox)row.FindControl("txtpmy")).Text;
            string seat = ((TextBox)row.FindControl("txtseat")).Text;
            string marks = ((TextBox)row.FindControl("txtmark")).Text;
             string percentage = ((TextBox)row.FindControl("txtpercentage")).Text;

            using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                string query = "UPDATE AdmissionTable SET FullName=@FullName, Address=@Address, moNo=@moNo , Email=@Email , birthdate=@birthdate , gender=@gender ,category=@category ,  course=@course , passingMY=@passingMY , seatno=@seatno , outofmarks=@outofmarks , percentage=@percentage WHERE id=@id"; // Update YourTable with your actual table name
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@moNo",mono);
                cmd.Parameters.AddWithValue("@Email",email);
                cmd.Parameters.AddWithValue("@birthdate",bdate);
                cmd.Parameters.AddWithValue("@gender",gender);
                cmd.Parameters.AddWithValue("@category",category);
                cmd.Parameters.AddWithValue("@course",course);
                cmd.Parameters.AddWithValue("@passingMY",pmy);
                cmd.Parameters.AddWithValue("@seatno",seat);
                cmd.Parameters.AddWithValue("@outofmarks",marks);
                  cmd.Parameters.AddWithValue("@percentage",percentage);
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            GridView2.EditIndex = -1;
            gvbind2();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            gvbind2();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Admission.mdf;Integrated Security=True;User Instance=True"))
            {
                string query = "DELETE FROM AdmissionTable WHERE id=@id"; // Update YourTable with your actual table name
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();

            gvbind2();
            }
        }
    
        protected void ButtonSearch2_Click(object sender, EventArgs e)
        {
            string searchText = TextBox2.Text.Trim();
            string query = "SELECT * FROM dbo.AdmissionTable WHERE FullName LIKE '%' + @SearchText + '%' OR Email LIKE '%' + @SearchText + '%'";
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