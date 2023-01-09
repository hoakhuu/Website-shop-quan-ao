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
    public class PersonalP
    {
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;


        string maa;
        string Ten;
        string sdt;
        string diachi;
        string hinh;

        public string Ten1 { get => Ten; set => Ten = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Diachi { get => diachi; set => diachi = value; }
        public string Maa { get => maa; set => maa = value; }
        public string Hinh { get => hinh; set => hinh = value; }

        public PersonalP(string m, string t, string s, string d,string h)
        {
            Maa = m;
            Ten1 = t;
            Diachi = d;
            Sdt = s;
            Hinh = h;
        }

   
       
    }
}