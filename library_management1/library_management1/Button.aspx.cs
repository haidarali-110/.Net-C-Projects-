using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_management1
{
    public partial class Button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueBook.aspx");
        }

        protected void btnReturnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReturnBook.aspx");
        }

        protected void btnShowRecords_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowRecords.aspx");
        }

        public string CommandArgument { get; set; }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}