using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Admission_Management
{
    public partial class print_download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }
    }
}