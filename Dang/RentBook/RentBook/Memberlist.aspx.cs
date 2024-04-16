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
                SqlDataAdapter da = new SqlDataAdapter("SELECT TV_MA, TV_TEN, TV_GT, TV_DIACHI, TV_SDT, TV_EMAIL, TV_NGAYSINH, TV_GHICHU FROM Thanhvien", clsDatabase.con);
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
                SqlCommand com = new SqlCommand("Delete from Thanhvien where TV_MA='" + TV_MA + "'", clsDatabase.con);
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
            string TV_MA = grdTV.DataKeys[e.RowIndex].Value.ToString();
            int TV_GT;

            try
            {
                CheckBox chk = grdTV.Rows[e.RowIndex].FindControl("cboGT") as CheckBox;
                if (chk != null)
                {
                    TV_GT = chk.Checked ? 1 : 0;
                }
                else
                {
                    throw new Exception("Checkbox not found.");
                }
                clsDatabase.OpenConenction();
                SqlCommand com = new SqlCommand("UPDATE Thanhvien " +
                    "SET TV_TEN=@TV_TEN, " +
                    "TV_GT=@TV_GT, " +
                    "TV_DIACHI=@TV_DIACHI, " +
                    "TV_SDT=@TV_SDT, " +
                    "TV_EMAIL=@TV_EMAIL, " +
                    "TV_NGAYSINH=@TV_NGAYSINH, " +
                    "TV_GHICHU=@TV_GHICHU " +
                    "WHERE TV_MA='" + TV_MA + "'", clsDatabase.con);


                SqlParameter p1 = new SqlParameter("@TV_TEN", SqlDbType.NChar);
                SqlParameter p2 = new SqlParameter("@TV_GT", SqlDbType.Bit);
                SqlParameter p3 = new SqlParameter("@TV_DIACHI", SqlDbType.NChar);
                SqlParameter p4 = new SqlParameter("@TV_SDT", SqlDbType.NChar);
                SqlParameter p5 = new SqlParameter("@TV_EMAIL", SqlDbType.NChar);
                SqlParameter p6 = new SqlParameter("@TV_NGAYSINH", SqlDbType.Date);
                SqlParameter p7 = new SqlParameter("@TV_GHICHU", SqlDbType.NChar);

                p1.Value = (grdTV.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
                
                p2.Value = TV_GT;

                p3.Value = (grdTV.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
                p4.Value = (grdTV.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
                p5.Value = (grdTV.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
                string TV_NGAYSINH = (grdTV.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
                DateTime datetime;
                if (DateTime.TryParseExact(TV_NGAYSINH, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out datetime))
                {
                    p6.Value = datetime;
                }
                else
                {
                    lblError.Text = "Invalid date format. Please enter date in format dd/MM/yyyy.";
                }
                
                p7.Value = (grdTV.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;

                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.Parameters.Add(p6);
                com.Parameters.Add(p7);

                com.ExecuteNonQuery();

                clsDatabase.CloseConnection();
                lblError.Text = "Updating successful";
            }
            catch (NullReferenceException ex)
            {
                lblError.Text = ex.Message;
            }
            grdTV.EditIndex = -1;
            getThanhVien();
        }

        protected void grdTV_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CheckBox chk = grdTV.Rows[e.NewEditIndex].FindControl("cboGT") as CheckBox;
            if (chk != null)
            {
                chk.Visible = true;
            }

            grdTV.EditIndex = e.NewEditIndex;
            getThanhVien();
        }

        protected void grdTV_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CheckBox chk = grdTV.Rows[e.RowIndex].FindControl("cboGT") as CheckBox;
            if (chk != null)
            {
                chk.Visible = false;
            }

            string TV_MA = grdTV.DataKeys[e.RowIndex].Value.ToString();
            lblError.Text = "Update for item " + TV_MA + " Canceled.";
            grdTV.EditIndex = -1;
            getThanhVien();
        }
        protected void grdTV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnMemberlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberlist.aspx");
        }

        protected void btnConbooklist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Conbooklist.aspx");
        }

        protected void btnRentlist_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rentlist.aspx");
        }

        protected void imgbtnMainPage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void btnMemberregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberregister.aspx");
        }

        protected void btnRentbook_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rentbook.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}