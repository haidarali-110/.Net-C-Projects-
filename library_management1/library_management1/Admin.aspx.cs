using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management1
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "Admin" && txtPassword.Text == "1234")
            {

                Response.Redirect("Button.aspx");

            }
            else
            {

                txtUsername.Text = "";
                txtPassword.Text = "";
                btnLogin.Text = "USERNAME OR PASSWORD INCORRECT";

            }
        }
    }
}