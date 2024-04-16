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
    public partial class Memberlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getThanhVien();
            }
        }

        void getThanhVien()
        {
            try
            {
                clsDatabase.OpenConenction();
                SqlDataAdapter da = new SqlDataAdapter("Select TV_MA, TV_hoten, TV_gioitinh, TV_diachi, TV_email, TV_ngaysinh, TV_ghichu from ThanhVien", clsDatabase.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grdTV.DataSource = dt;
                grdTV.DataBind();
                clsDatabase.CloseConnection();


            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void grdTV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTV.PageIndex = e.NewPageIndex;
            getThanhVien();
        }

        protected void grdTV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string TV_MA = grdTV.DataKeys[e.RowIndex].Value.ToString();
            try
            {
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("Delete from ThanhVien where TV_MA='" + TV_MA + "'", clsDatabase.con);
                com.ExecuteNonQuery();
                clsDatabase.CloseConnection();
                lblError.Text = "Delete for customer with TV_MA " + TV_MA + " successful";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            getThanhVien();
            grdTV.EditIndex = -1;
        }
        protected void grdTV_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string tendn = grdTV.DataKeys[e.RowIndex].Value.ToString();
            int gioitinh;
            try
            {
                string date = (grdTV.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;

                DateTime datetime = DateTime.ParseExact(date, "dd/MM/yyyy", null);
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("update KhachHang " +
                    "set tendangnhap=@tendn, " +
                    "hoten=@hoten, " +
                    "ngaysinh=@ngaysinh, " +
                    "gioitinh=@gioitinh, " +
                    "email=@email " +
                    "where tendangnhap='" + tendn + "'", clsDatabase.con);

                SqlParameter p1 = new SqlParameter("@tendn", SqlDbType.NVarChar);
                SqlParameter p2 = new SqlParameter("@hoten", SqlDbType.NVarChar);
                SqlParameter p3 = new SqlParameter("ngaysinh", SqlDbType.Date);
                SqlParameter p4 = new SqlParameter("@gioitinh", SqlDbType.Bit);
                SqlParameter p5 = new SqlParameter("@email", SqlDbType.NVarChar);

                p1.Value = (grdTV.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
                p2.Value = (grdTV.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;

                //p3.Value = (grdTV.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text ;


                p3.Value = datetime;
                bool isSelected = (grdTV.Rows[e.RowIndex].Cells[3].Controls[0] as CheckBox).Checked;
                if (isSelected)
                {
                    gioitinh = 1;
                }
                else gioitinh = 0;

                p4.Value = gioitinh;
                p5.Value = (grdTV.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.ExecuteNonQuery();
                clsDatabase.CloseConnection();
                lblError.Text = "Updating successful";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
            grdTV.EditIndex = -1;
            getThanhVien();
        }

        protected void grdTV_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdTV.EditIndex = e.NewEditIndex;
            getThanhVien();
        }

        protected void grdTV_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            string tendn = grdTV.DataKeys[e.RowIndex].Value.ToString();
            lblError.Text = "Update for item " + tendn + " Canceled.";
            grdTV.EditIndex = -1;
            getThanhVien();
        }
        protected void grdTV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnMemberlist_Click(object sender, EventArgs e)
        {

        }

        protected void btnConbooklist_Click(object sender, EventArgs e)
        {

        }

        protected void btnRentlist_Click(object sender, EventArgs e)
        {

        }

        protected void imgbtnMainPage_Click(object sender, ImageClickEventArgs e)
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

        }
    }
}