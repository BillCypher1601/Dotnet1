using System;
using System.Data;
using System.Data.SqlClient;

namespace RentBook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            {
                // Mở kết nối
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("SELECT NV_QUYEN FROM Nhanvien WHERE NV_USERNAME = @NV_USERNAME AND NV_PASSWORD = @NV_PASSWORD", clsDatabase.con);

                SqlParameter p1 = new SqlParameter("@NV_USERNAME", SqlDbType.NChar);
                SqlParameter p2 = new SqlParameter("@NV_PASSWORD", SqlDbType.NChar);

                p1.Value = txtTenDN.Text;
                p2.Value = txtMK.Text;

                com.Parameters.Add(p1);
                com.Parameters.Add(p2);

                com.ExecuteNonQuery();
                SqlDataReader reader = com.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        bool isAdmin = Convert.ToBoolean(reader["NV_QUYEN"]);
                        if (isAdmin)
                        {
                            // Đăng nhập thành công với quyền admin
                            lblThongBao.Text = "Đăng nhập thành công với quyền admin";
                            // Redirect đến trang admin
                            Response.Redirect("~/admin/Mainpage.aspx");
                        }
                        else
                        {
                            // Đăng nhập thành công với quyền nhân viên
                            lblThongBao.Text = "Đăng nhập thành công với quyền nhân viên";
                            // Redirect đến trang nhân viên
                            Response.Redirect("Mainpage.aspx");
                        }
                    }
                }
                else
                {
                    // Sai tên đăng nhập hoặc mật khẩu
                    lblThongBao.Text = "Sai tên đăng nhập hoặc mật khẩu";
                }

                // Đóng kết nối
                clsDatabase.CloseConnection();
            }
        }
    }
}
