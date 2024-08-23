using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EClinic.Models
{
    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private string conStr;
        private SqlDataAdapter sda;

        public Functions()
        {
            conStr = @"Data Source=DESKTOP-8HPOK3N\SQLEXPRESS;Initial Catalog=As_Shifa;Integrated Security=True;Connection Timeout=30";
            con = new SqlConnection(conStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        public int SetDatas(string sql)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = sql;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }

        public DataTable GetDatas(string query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(query, conStr);
            sda.Fill(dt);
            return dt;
        }
    }

}