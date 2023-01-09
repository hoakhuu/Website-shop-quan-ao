using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_Clothes.Models;
using System.Data.SqlClient;
using System.Data;

namespace Website_Clothes.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        QLQADataContext db = new QLQADataContext();

        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;


        public ActionResult Index1()
        {
            return View();
        }

        public ActionResult Random10SP()
        {
            List<BiaSP> Random10spp= new List<BiaSP>();

            if(sqlCon == null)
            {
                sqlCon = new SqlConnection(strCon);
            }
            if(sqlCon.State==ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT TOP 20 TenSP,Hinh1, CONVERT(varchar,DonGia,101),MaSP FROM PRODUCT  ORDER BY NEWID()";

            cmd.Connection =sqlCon;

            SqlDataReader reader= cmd.ExecuteReader();
           while (reader.Read())
            {
                string tenspp = reader.GetString(0);
                string hinhh = reader.GetString(1);
                string dg=reader.GetString(2);
                string maspp=reader.GetString(3);
                
               Random10spp.Add(new BiaSP(hinhh, tenspp, dg,maspp));

                
            }
            reader.Close();
          
            return View(Random10spp);
        }

        public ActionResult Index2_LayoutProduct()
        {
            return View();
        }


        public ActionResult ShowProduct(string sreach)
        {
            List<BiaSP> Showpro = new List<BiaSP>();

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
            cmd.CommandText = "select TenSP, Hinh1,  CONVERT(varchar,DonGia,101),MaSP from dbo.Product where TenSP like N'%"+sreach+"%' ORDER BY NEWID()";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string tenspp = reader.GetString(0);
                string hinhh = reader.GetString(1);
                string dg = reader.GetString(2);
                string maspp = reader.GetString(3);

                Showpro.Add(new BiaSP(hinhh, tenspp, dg,maspp));


            }
            reader.Close();

            return View(Showpro);
        }

        public ActionResult CateProduct(string mCate)
        {
            var listCate = db.PRODUCTs.Where(t => t.MaLoai == mCate).ToList();

            return View(listCate);
        }



        public ActionResult ProductDetail (string masppp)
        {
            var detailpro = db.PRODUCTs.Where(t => t.MaSP== masppp).ToList();

            return View(detailpro);

        }


        public ActionResult RandomSuggest()
        {
            List<BiaSP> RandomSugg = new List<BiaSP>();

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
            cmd.CommandText = "SELECT TOP 5 TenSP,Hinh1, CONVERT(varchar,DonGia,101),MaSP FROM PRODUCT  ORDER BY NEWID()";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string tenspp = reader.GetString(0);
                string hinhh = reader.GetString(1);
                string dg = reader.GetString(2);
                string maspp = reader.GetString(3);

                RandomSugg.Add(new BiaSP(hinhh, tenspp, dg, maspp));


            }
            reader.Close();

            return View(RandomSugg);
        }



    }
}