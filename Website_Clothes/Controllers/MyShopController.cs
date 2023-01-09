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
    public class MyShopController : Controller
    {
        // GET: MyShop

        QLQADataContext db = new QLQADataContext();
        // GET: Category
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;
        // GET: GioHang
        public ActionResult SanPham()
        {
            MANAGE man = Session["MA"] as MANAGE;
            List<SPShop> Showpro = new List<SPShop>();

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
            cmd.CommandText = "select MaSP, TenSP, MoTa,Hinh1, Hinh2,Hinh3, convert(varchar(50),DonGia,101), TinhTrang, KichThuoc1,KichThuoc2,KichThuoc3, MaLoai, MaBrand from  PRODUCT p where p.MaQL ='" + man.MaQL+"'";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string masp=reader.GetString(0);
                string tensp=reader.GetString(1);
                string mota=reader.GetString(2);
                string hinh1=reader.GetString(3);
                string hinh2=reader.GetString(4);
                string hinh3=reader.GetString(5);
                string dongia=reader.GetString(6);
                string tinhtrang=reader.GetString(7);
                string size1=reader.GetString(8);
                string size2=reader.GetString(9);
                string size3=reader.GetString(10);
                string maloai=reader.GetString(11);
                string mabrand=reader.GetString(12);

                Showpro.Add(new SPShop( masp,tensp,mota,hinh1,hinh2,hinh3,dongia,tinhtrang,size1,size2,size3,maloai,mabrand));


            }
            reader.Close();

            return View(Showpro);
            
        }




        public ActionResult CTSanPham(string masppp)
        {
            MANAGE man = Session["MA"] as MANAGE;
            List<SPShop> Showpro = new List<SPShop>();

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
            cmd.CommandText = "select MaSP, TenSP, MoTa,Hinh1, Hinh2,Hinh3, convert(varchar(50),DonGia,101), TinhTrang, KichThuoc1,KichThuoc2,KichThuoc3, MaLoai, MaBrand from  PRODUCT p where p.MaQL ='" + man.MaQL + "' and p.MaSP='"+masppp+"' ";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string masp = reader.GetString(0);
                string tensp = reader.GetString(1);
                string mota = reader.GetString(2);
                string hinh1 = reader.GetString(3);
                string hinh2 = reader.GetString(4);
                string hinh3 = reader.GetString(5);
                string dongia = reader.GetString(6);
                string tinhtrang = reader.GetString(7);
                string size1 = reader.GetString(8);
                string size2 = reader.GetString(9);
                string size3 = reader.GetString(10);
                string maloai = reader.GetString(11);
                string mabrand = reader.GetString(12);

                Showpro.Add(new SPShop(masp, tensp, mota, hinh1, hinh2, hinh3, dongia, tinhtrang, size1, size2, size3, maloai, mabrand));


            }
            reader.Close();

             return View(Showpro);

        }

        public ActionResult SaveSP(string msp, string ten,string dongia, string size1, string size2,string size3, string filename1, string filename2, string filename3)
        {
            LOGIN lg = Session["lg"] as LOGIN;
            if (lg != null)
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


                cmd.CommandText = "update PRODUCT set TenSP='"+ten+"',DonGia="+dongia+",Hinh1='"+filename1+"',Hinh2='"+filename2+"',Hinh3='"+filename3+"',KichThuoc1='"+size1+"',KichThuoc2='"+size2+"',KichThuoc3='"+size3+"' where MaSP='"+msp+"'";

                cmd.Connection = sqlCon;

                int qw = cmd.ExecuteNonQuery();


                

            }
            return RedirectToAction("PersonalPage", "Account");

        }


        public ActionResult ThongBaoDonHang()
        {
            MANAGE man = Session["MA"] as MANAGE;
            

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
            cmd.CommandText = "select IDLichSu,SanPhamLS,convert(varchar (10),SoLuong,101)," +
                "convert(varchar (10),l.DonGia,101),convert(varchar (10),ThanhTien,101), " +
                "b.TenBuyer, b.SDT,b.DiaChi,l.size,l.HinhSP from LichSuDatHang l, PRODUCT p, BUYER b " +
                "where	p.MaQL='"+man.MaQL+"'and p.MaSP=l.MaSP and b.MaBuyer = l.MaBuyer";

            //cmd.Connection = sqlCon;
            List<lichsumuahang> htr = new List<lichsumuahang>();
            SqlDataReader reader = cmd.ExecuteReader();
            string ten = "";
            while (reader.Read())
            {

                string id = reader.GetString(0);
                string sp=reader.GetString(1);
                string sl=reader.GetString(2);
                string dongia=reader.GetString(3); ;
                string thanhtien=reader.GetString(4);
                string tenbuyer=reader.GetString(5);
                string sdt=reader.GetString(6);
                string diachi=reader.GetString(7);
                string si=reader.GetString(8);
                string hinh=reader.GetString(9);
               
                htr.Add(new lichsumuahang(hinh,id,sp,sl,dongia,thanhtien,tenbuyer,sdt,diachi,si));
            }
            reader.Close();
            return View(htr);
        }


        public ActionResult TongTB()
        {

            MANAGE man = Session["MA"] as MANAGE;

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
            cmd.CommandText = "IF ((select count(*) from LichSuDatHang l, PRODUCT p where p.MaQL='"+man.MaQL+"'and p.MaSP=l.MaSP)>=1) select convert(varchar(10),count(*),101) from LichSuDatHang l, PRODUCT p where p.MaQL='"+man.MaQL+ "'and p.MaSP=l.MaSP else select convert(varchar(10),0,101)";

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

            ViewBag.TongTB = ten;
            return PartialView();


        }


    }
}