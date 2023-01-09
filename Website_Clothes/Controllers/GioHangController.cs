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
    public class GioHangController : Controller
    {

        QLQADataContext db = new QLQADataContext();
        // GET: Category
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;
        // GET: GioHang
        public ActionResult Index()
        {
            return View();
        }



        public ActionResult PersonalCart()
        {
            BUYER buyr = Session["BR"] as BUYER;
            
               
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
                cmd.CommandText = "select d.TenSP, convert(varchar (10),SoLuong,101), Size, convert(varchar (10),DonGia,101),Hinh1,s.AvatarSeller,s.TenSeller,c.MaGioHang,convert(varchar,c.SoLuong * d.DonGia,101)  from SELLER s,MANAGE m,Cart c, Product d where c.MaBuyer='" + buyr.MaBuyer+"' and c.MaSP=d.MaSP and m.MaQL=d.MaQL and d.MaQL=s.MaQL";

                cmd.Connection = sqlCon;
                List<cart> carts = new List<cart>();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string ten=reader.GetString(0);
                string sluong = reader.GetString(1);
                    string size=reader.GetString(2);
                    string dongia=reader.GetString(3);
                    string hinh=reader.GetString(4);
                string avt=reader.GetString(5);
                string tensh=reader.GetString(6);
                string magh=reader.GetString(7);
                string tong=reader.GetString(8);
                    carts.Add(new cart(ten, sluong, size, dongia,hinh,avt,tensh,magh,tong));

                }
                reader.Close();

            return View(carts);

        }


        public ActionResult TongTien()
        {
            BUYER buyr = Session["BR"] as BUYER;


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
            cmd.CommandText = "if ((select sum(c.SoLuong * p.DonGia) from CART c, PRODUCT p where  c.MaBuyer = '"+buyr.MaBuyer+"' and c.MaSP=p.MaSP )>=1) select convert(varchar(50),sum(c.SoLuong * p.DonGia),101) from CART c, PRODUCT p where c.MaBuyer = '"+buyr.MaBuyer+"' and c.MaSP=p.MaSP else select convert(varchar(10),0,101)";

            //cmd.Connection = sqlCon;
            List < cart > carts = new List<cart>();
            SqlDataReader reader = cmd.ExecuteReader();
            string ten = "";
            while (reader.Read())
            {
               ten = reader.GetString(0);
              
                //carts.Add(new cart(ten));

            }
            reader.Close();


            ViewBag.Tongtien =ten;
            return PartialView();
        }


        


        string AutoIDCART ()
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
            cmd.CommandText = "select MaGioHang from CART";

            SqlDataReader reader = cmd.ExecuteReader();


            string masp = ""; int dem = 0; int max = 0; int flag = 0;

            while (reader.Read())
            {
                if (flag == 1)
                {
                    string masp1 = reader.GetString(0);
                    int dem1 = masp1.Length - 1;
                    int demm1 = int.Parse(masp1.Substring(1, dem1));

                    if (max > demm1)
                    {
                        max = max;
                    }
                    else
                    {
                        max = demm1;
                    }
                }
                else if (flag == 0)
                {
                    masp = reader.GetString(0);
                    dem = masp.Length - 1;
                    max = int.Parse(masp.Substring(1, dem));
                    flag = 1;
                }

            }
            max = max + 1;
            string dau = masp.Substring(0, 2);
            string kq = dau + max;
            reader.Close();
            return kq;

        }

        public ActionResult ThemGioHang (string idSP)
        {
            string kt  = Request.Form["country"];
            string sl = Request.Form["slo"]; 
            string idma = Request.Form["idsp"];
            string link= Request.Form["link"];

            string idcart = AutoIDCART();
            BUYER buyr = Session["BR"] as BUYER;

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
            cmd.CommandText = "insert into CART values ('2022-11-14',"+sl+",'"+kt+"','"+ idcart + "','"+buyr.MaBuyer+"','"+idma+"')";

            cmd.Connection = sqlCon;
            int kq = cmd.ExecuteNonQuery();


            return Redirect(link);
        }

        public ActionResult TongSL()
        {
            BUYER buyr = Session["BR"] as BUYER;


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
            cmd.CommandText = "IF  ((select sum(SoLuong) from CART where MaBuyer ='"+buyr.MaBuyer+"')>=1) select convert(varchar(10),sum(SoLuong),101) from CART where MaBuyer ='"+buyr.MaBuyer+"' else select convert(varchar (10),0,101)";

            //cmd.Connection = sqlCon;
            List<cart> carts = new List<cart>();
            SqlDataReader reader = cmd.ExecuteReader();
            string ten = "";
            while (reader.Read())
            {
                
                    ten = reader.GetString(0);
               

                //carts.Add(new cart(ten));

            }
            reader.Close();

            ViewBag.TongSL = ten;
            return PartialView();


        }


        public ActionResult DeleteCart(string magiohang)
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
            cmd.CommandText = "delete from CART where MaGioHang='"+magiohang+"'";

            cmd.Connection = sqlCon;
           int kq=cmd.ExecuteNonQuery();


            return RedirectToAction("PersonalCart", "GioHang");

        }


        public void LOADLichSu()
        {
            BUYER buyr = Session["BR"] as BUYER;


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
            

            cmd.CommandText = "EXEC LSDatHang '"+buyr.MaBuyer+"'";

            cmd.Connection = sqlCon;

            int qw = cmd.ExecuteNonQuery();

        }


        public ActionResult LichSuMuaHang()
        {
            BUYER buyr = Session["BR"] as BUYER;
            LOADLichSu();

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
            cmd.CommandText = "select IDLichSu,SanPhamLS,convert(varchar (10),SoLuong,101),convert(varchar (10),DonGia,101),convert(varchar (10),ThanhTien,101),TenShop,DiaChiShop,SDT,HinhSP,MaBuyer,size,MaSP from LichSuDatHang where MaBuyer='" + buyr.MaBuyer+"'";

            //cmd.Connection = sqlCon;
            List<lichsumuahang> htr = new List<lichsumuahang>();
            SqlDataReader reader = cmd.ExecuteReader();
            string ten = "";
            while (reader.Read())
            {

                string id = reader.GetString(0);
                string tensp=reader.GetString(1);
                string dongia  = reader.GetString(2);
                string sl=reader.GetString(3);
                string thanhtien=reader.GetString(4);
                string tenshop=reader.GetString(5);
                string diachi=reader.GetString(6);
                string sdt=reader.GetString(7); 
                string hinh=reader.GetString(8);
                string size=reader.GetString(10);
                string mabuyer=reader.GetString(9);
                string masp=reader.GetString(10);
                htr.Add(new lichsumuahang(id, tensp, dongia, sl, thanhtien, tenshop, diachi, sdt, hinh, size,mabuyer,masp));
            }
            reader.Close();
            return View(htr);
        }


    }
}