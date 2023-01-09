using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_Clothes.Models;
using System.Data.SqlClient;
using System.Data;

namespace Website_Clothes.Models
{
    public class DetailPro
    {

        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;
        string SPname;
        string Hinh1;
        string Hinh2;
        string Hinh3;
        string Dongia;
        string Size1;
        string Size2;
        string Size3;
        string Tinhtrang;
        string chitiet;

        public DetailPro()
        {
            
        }

        public string SPname1 { get => SPname; set => SPname = value; }
        public string Hinh11 { get => Hinh1; set => Hinh1 = value; }
        public string Hinh21 { get => Hinh2; set => Hinh2 = value; }
        public string Hinh31 { get => Hinh3; set => Hinh3 = value; }
        public string Dongia1 { get => Dongia; set => Dongia = value; }
        public string Size11 { get => Size1; set => Size1 = value; }
        public string Size21 { get => Size2; set => Size2 = value; }
        public string Size31 { get => Size3; set => Size3 = value; }
        public string Tinhtrang1 { get => Tinhtrang; set => Tinhtrang = value; }
        public string Chitiet { get => chitiet; set => chitiet = value; }


        public string getTenSP (string idSP)
        {
            if (sqlCon == null)
            {
                sqlCon = new SqlConnection(strCon);
            }
            if (sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select TenSP from Product where MaSP ='" + idSP + "'";

            cmd.Connection = sqlCon;
            string tensp = "";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                tensp = reader.GetString(0);

            }
            reader.Close();


            return tensp;
        }

    }
}