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
    public class CategoryController : Controller
    {
        private QLQADataContext db = new QLQADataContext();
        // GET: Category
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DanhMuc()
        {
            var ListDanhMuc = db.CATEGORies.OrderBy(cd => cd.TenLoai).ToList();
            return View(ListDanhMuc);
        }

        public ActionResult Brand()
        {
            List<lbrand> brandList = new List<lbrand>();


            var query = from item in db.BRANDs
                        select new lbrand
                        {
                            Picture = item.HinhMH,
                            Mbr=item.MaBrand
                            
                        };
            brandList = query.Distinct().ToList();

            return View(brandList);

        }

        public ActionResult FlashSale()
        {
            List<BiaSP> fls = new List<BiaSP>();


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
            cmd.CommandText = "select TenSP, Hinh1, CONVERT(varchar,DonGia,101),MaSP from PRODUCT where MaQL in (select m.MaQL from VOUCHER v, MANAGE m where m.MaQL = v.MaQL)";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {// namesp, string imgg, string sll, string end
                string tenspp = reader.GetString(0);
                string hinhh = reader.GetString(1);
                string dg = reader.GetString(2);
                string maspp = reader.GetString(3);

                fls.Add(new BiaSP(hinhh, tenspp, dg,maspp));


            }
            reader.Close();
            return View(fls);
        }


        public ActionResult DanhMucTT()
        {
            var ListDanhMuc = db.CATEGORies.OrderBy(cd => cd.TenLoai).Take(5).ToList();
            return View(ListDanhMuc);
        }
       // select p.MaQL, s.TenSeller, s.AvatarSeller from SELLER s, PRODUCT p where s.MaQL = p.MaQL and TenSP like N'%Nón%' group by p.MaQL, s.TenSeller, s.AvatarSeller having COUNT(p.MaQL)>=all(select count(MaQL) from dbo.PRODUCT where TenSP like N'%Nón%' group by MaQL)
        
        
      

        public ActionResult InforShop(string sreach)
        {
            ViewBag.TK = sreach;

            List<inforShop> inforShops = new List<inforShop>();


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
            cmd.CommandText = "select p.MaQL, s.TenSeller, s.AvatarSeller,CONVERT(varchar, COUNT(p.MaQL),101)  from SELLER s, PRODUCT p where s.MaQL = p.MaQL and TenSP like N'%" + sreach+ "%' group by p.MaQL, s.TenSeller, s.AvatarSeller having COUNT(p.MaQL)>=all(select count(MaQL) from dbo.PRODUCT where TenSP like N'%" + sreach + "%'group by MaQL)";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {// namesp, string imgg, string sll, string end
                string namee = reader.GetString(1);
                string hinhh = reader.GetString(2);
                string sl = reader.GetString(3);

                inforShops.Add(new inforShop(hinhh, namee,sl));


            }
            reader.Close();
            return View(inforShops);
        }

        public ActionResult Brand1()
        {
            var ListBra = db.BRANDs.OrderBy(cd => cd.TenBrand).Take(5).ToList();
            return View(ListBra);


        }
        
        public ActionResult BrandProduct(string mbrand)
        {
            var listSachTheoNXB = db.PRODUCTs.Where(t => t.MaBrand == mbrand).ToList();
            
            return View(listSachTheoNXB);
        }


        public ActionResult CategoryProduct()
        {
            var ListCate = db.CATEGORies.OrderBy(cd => cd.TenLoai).Take(10).ToList();
            return View(ListCate);
        }


    }
}