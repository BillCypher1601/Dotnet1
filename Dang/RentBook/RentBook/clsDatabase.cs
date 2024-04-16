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
                con = new SqlConnection("Server=DESKTOP-KHO2NV5\\SQLEXPRESS;Database=Rentbook;Integrated Security=True;");
                con.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Lỗi kết nối: " + ex.Message);
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