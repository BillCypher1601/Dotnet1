using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RentBook
{
    public class clsDatabase
    {
        public static SqlConnection con;

        public static bool OpenConenction()
        {
            try
            {
                con = new SqlConnection("Server=NNDANG;Database=QLKhachHang;uid=sa;pwd=sa1601");
                con.Open();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        public static bool CloseConnection()
        {
            try
            {
                con.Close();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
    }
}