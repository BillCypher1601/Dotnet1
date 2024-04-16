using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentBook.admin
{
    public partial class Conbooklist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getSach();
            }
        }

        void getSach()
        {
            try
            {
                clsDatabase.OpenConenction();
                SqlDataAdapter da = new SqlDataAdapter("SELECT S_MA, S_TEN, S_HINHANH, S_TACGIA, S_THELOAI, S_SOLUONG, S_GIATHUE, S_NGAYNHAP, S_TINHTRANG, S_GHICHU FROM Sach", clsDatabase.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grdSach.DataSource = dt;
                grdSach.DataBind();
                clsDatabase.CloseConnection();
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void grdSach_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdSach.PageIndex = e.NewPageIndex;
            getSach();
        }

        protected void grdSach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string S_MA = grdSach.DataKeys[e.RowIndex].Value.ToString();
            try
            {
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("Delete from Sach where S_MA='" + S_MA + "'", clsDatabase.con);
                com.ExecuteNonQuery();
                clsDatabase.CloseConnection();
                lblError.Text = "Delete for book with ID " + S_MA + " successful";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            getSach();
            grdSach.EditIndex = -1;
        }

        protected void grdSach_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string S_MA = grdSach.DataKeys[e.RowIndex].Value.ToString();

            try
            {
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("UPDATE Sach " +
                    "SET S_TEN=@S_TEN, " +
                    "S_HINHANH=@S_HINHANH, " +
                    "S_TACGIA=@S_TACGIA, " +
                    "S_THELOAI=@S_THELOAI, " +
                    "S_SOLUONG=@S_SOLUONG, " +
                    "S_GIATHUE=@S_GIATHUE, " +
                    "S_NGAYNHAP=@S_NGAYNHAP, " +
                    "S_TINHTRANG=@S_TINHTRANG, " +
                    "S_GHICHU=@S_GHICHU " +
                    "WHERE S_MA='" + S_MA + "'", clsDatabase.con);

                SqlParameter p1 = new SqlParameter("@S_TEN", SqlDbType.NVarChar);
                SqlParameter p2 = new SqlParameter("@S_HINHANH", SqlDbType.NVarChar);
                SqlParameter p3 = new SqlParameter("@S_TACGIA", SqlDbType.NVarChar);
                SqlParameter p4 = new SqlParameter("@S_THELOAI", SqlDbType.NVarChar);
                SqlParameter p5 = new SqlParameter("@S_SOLUONG", SqlDbType.Int);
                SqlParameter p6 = new SqlParameter("@S_GIATHUE", SqlDbType.Decimal);
                SqlParameter p7 = new SqlParameter("@S_NGAYNHAP", SqlDbType.DateTime);
                SqlParameter p8 = new SqlParameter("@S_TINHTRANG", SqlDbType.NVarChar);
                SqlParameter p9 = new SqlParameter("@S_GHICHU", SqlDbType.NVarChar);

                p1.Value = (grdSach.Rows[e.RowIndex].FindControl("txtTenSach") as TextBox).Text;
                p2.Value = (grdSach.Rows[e.RowIndex].FindControl("txtHinhAnh") as TextBox).Text;
                p3.Value = (grdSach.Rows[e.RowIndex].FindControl("txtTacGia") as TextBox).Text;
                p4.Value = (grdSach.Rows[e.RowIndex].FindControl("ddlTheLoai") as DropDownList).SelectedItem.Text;
                p5.Value = Convert.ToInt32((grdSach.Rows[e.RowIndex].FindControl("txtSoLuong") as TextBox).Text);
                p6.Value = Convert.ToDecimal((grdSach.Rows[e.RowIndex].FindControl("txtGiaThue") as TextBox).Text);
                p7.Value = Convert.ToDateTime((grdSach.Rows[e.RowIndex].FindControl("txtNgayNhap") as TextBox).Text);
                p8.Value = (grdSach.Rows[e.RowIndex].FindControl("txtTinhTrang") as TextBox).Text;
                p9.Value = (grdSach.Rows[e.RowIndex].FindControl("txtGhiChu") as TextBox).Text;

                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.Parameters.Add(p6);
                com.Parameters.Add(p7);
                com.Parameters.Add(p8);
                com.Parameters.Add(p9);

                com.ExecuteNonQuery();
                clsDatabase.CloseConnection();
                lblError.Text = "Updating successful";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            grdSach.EditIndex = -1;
            getSach();
        }

        protected void grdSach_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdSach.EditIndex = e.NewEditIndex;
            getSach();
        }

        protected void grdSach_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdSach.EditIndex = -1;
            getSach();
        }

        protected void grdSach_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Xử lý sự kiện khi chọn một dòng trong GridView
        }



        protected void btnRentlist_Click(object sender, EventArgs e)
        {

        }
       

        
        protected void imgbtnADMainPage_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {

        }

        protected void btnEmployeelist_Click(object sender, EventArgs e)
        {

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

        }

        protected void btnRentbooklist_Click(object sender, EventArgs e)
        {

        }
   
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login.aspx");
        }
    }

        
    
}