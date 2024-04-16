using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentBook
{
    public partial class Mainpage : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        
        protected void imgbtnMainPage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }
        

        protected void btnConbooklist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnRentlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnMemberregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegister.aspx");
        }

        protected void btnRentbook_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rentbook.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnMemberlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberlist.aspx");
        }
    }
}