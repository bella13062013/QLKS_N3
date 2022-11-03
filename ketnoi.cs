using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;
namespace Hotel_N3
{
    internal class ketnoi
    {
        static SqlConnection conn;
        static SqlDataAdapter da;
        static SqlCommand cmd;
        static SqlDataReader reader;

        static public void moKetNoi()
        {
            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ketnoi"].ConnectionString.ToString();
            try
            {
                conn.Open();
            }
            catch
            {

            }
        }
        static public void dongKetNoi()
        {
            conn.Close();
        }
        static public DataTable GetData(string sql)
        {
            DataTable dt = new DataTable();
            da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            return dt;
        }
        public static bool dangNhap(string user, string pw, string cv)
        {
            SqlDataReader reader = null;
            bool OK = false;
            string sql = "select * from dangnhap";
            SqlCommand cmd = new SqlCommand(sql, conn);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                if ((user.Trim() == reader["tendangnhap"].
                ToString().Trim()) && pw.Trim() ==
                reader["matkhau"].ToString().Trim())
                    OK = true;
                

            }


            return OK;
        }
    }
}
