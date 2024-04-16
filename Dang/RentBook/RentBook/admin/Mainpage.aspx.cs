using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentBook
{
    public partial class admin_Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        protected void imgbtnADMainPage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnEmployeelist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employeelist.aspx");
        }

        protected void btnAddbook_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addbook.aspx");
        }

        protected void btnConbookslist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conbookslist.aspx");
        }

        protected void btnMemberlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberlist.aspx");
        }

        protected void btnRentbooklist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rentbooklist.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-Mainpage.aspx");
        }
    }
}