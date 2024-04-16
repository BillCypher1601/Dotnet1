using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentBook
{
    public partial class Addbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnAddbook_Click(object sender, EventArgs e)
        {
            try
            {
                clsDatabase.OpenConenction();
                string fileName = Path.GetFileName(fileUploadHinhAnh.FileName);
                string filePath = Server.MapPath("~/resource/img/books/") + fileName;
                fileUploadHinhAnh.SaveAs(filePath);
                SqlCommand com = new SqlCommand("INSERT INTO Sach (S_TEN, S_HINHANH, S_TACGIA, S_THELOAI, S_SOLUONG, S_GIATHUE, S_NGAYNHAP, S_TINHTRANG, S_GHICHU) VALUES (" +
                    "@S_TEN, @S_HINHANH, @S_TACGIA, @S_THELOAI, @S_SOLUONG, @S_GIATHUE, @S_NGAYNHAP, @S_TINHTRANG, @S_GHICHU)", clsDatabase.con);
                SqlParameter p1 = new SqlParameter("@S_TEN", SqlDbType.NVarChar);
                SqlParameter p2 = new SqlParameter("@S_HINHANH", SqlDbType.NVarChar);
                SqlParameter p3 = new SqlParameter("@S_TACGIA", SqlDbType.NVarChar);
                SqlParameter p4 = new SqlParameter("@S_THELOAI", SqlDbType.NVarChar);
                SqlParameter p5 = new SqlParameter("@S_SOLUONG", SqlDbType.Int);
                SqlParameter p6 = new SqlParameter("@S_GIATHUE", SqlDbType.Decimal);
                SqlParameter p7 = new SqlParameter("@S_NGAYNHAP", SqlDbType.Date);
                SqlParameter p8 = new SqlParameter("@S_TINHTRANG", SqlDbType.NVarChar);
                SqlParameter p9 = new SqlParameter("@S_GHICHU", SqlDbType.NVarChar);

                p1.Value = txtTenSach.Text;
                p2.Value = "~/resource/img/books/" + fileName;
                p3.Value = txtTacGia.Text;
                p4.Value = ddlTheLoai.Text;
                p5.Value = txtSoLuong.Text;
                p6.Value = txtGiaThue.Text;
                p7.Value = txtNgayNhap.Text;
                p8.Value = ddlTinhTrang.Text;
                p9.Value = txtGhiChuSach.Text;

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
                lblThongBao.Text = "Thêm sách thành công";
                clsDatabase.CloseConnection();
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Không thể thêm sách: " + ex.Message;
            }
        }

    

    protected void btnMemberlist_Click(object sender, EventArgs e)
        {

        }

        protected void imgbtnMainPage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnConbooklist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conbooklist.aspx");
        }

        protected void btnRentlist_Click(object sender, EventArgs e)
        {

        }

        protected void btnMemberregister_Click(object sender, EventArgs e)
        {

        }

        protected void btnRentbook_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login.aspx");
        }
    }
}