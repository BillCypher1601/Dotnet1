using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentBook
{
    public partial class MemberRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            try
            {
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("insert into Thanhvien values(" +
                    "@TV_TEN, @TV_GT, @TV_DIACHI, @TV_SDT, @TV_EMAIL, @TV_NGAYSINH, @TV_GHICHU" +
                    ")", clsDatabase.con);
                SqlParameter p1 = new SqlParameter("@TV_TEN", SqlDbType.NChar);
                SqlParameter p2 = new SqlParameter("@TV_GT", SqlDbType.Bit);
                SqlParameter p3 = new SqlParameter("@TV_DIACHI", SqlDbType.NChar);
                SqlParameter p4 = new SqlParameter("@TV_SDT", SqlDbType.NChar);
                SqlParameter p5 = new SqlParameter("@TV_EMAIL", SqlDbType.NChar);
                SqlParameter p6 = new SqlParameter("@TV_NGAYSINH", SqlDbType.Date);
                SqlParameter p7 = new SqlParameter("@TV_GHICHU", SqlDbType.NChar);
                p1.Value = txtHoTen.Text;
                if (RadNam.Checked)
                {
                    p2.Value = 1;
                }
                else if (RadNu.Checked)
                {
                    p2.Value = 0;
                }
                p3.Value = txtDiaChi.Text;
                p4.Value = txtSDT.Text;
                p5.Value = txtEmail.Text;
                p6.Value = txtNgaySinh.Text;
                p7.Value = txtGhiChu.Text;

                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.Parameters.Add(p6);
                com.Parameters.Add(p7);
                com.ExecuteNonQuery();
                lblThongBao.Text = "Đăng ký thành công";
                clsDatabase.CloseConnection();
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Không thể cập nhật dữ liệu: " + ex.Message;
            }
        }

        protected void imgbtnMainPage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnMemberlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberlist.aspx");
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
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }
    }
}