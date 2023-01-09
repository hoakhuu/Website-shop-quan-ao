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
    public class ThanhToanController : Controller
    {
        // GET: ThanhToan

        QLQADataContext db = new QLQADataContext();
        // GET: Category
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;


        public ActionResult PayUp()
        {
            return View();
        }

        public ActionResult Address()
        {
            LOGIN lg = Session["lg"] as LOGIN;//khai báo sử dung
            if (lg != null)
            {
                List<PersonalP> Ps = new List<PersonalP>();

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
                cmd.CommandText = "select MaBuyer,TenBuyer,SDT,DiaChi,AvatarBuyer from Buyer where MaLogin ='" + lg.MaLogin + "'";

                cmd.Connection = sqlCon;

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {// namesp, string imgg, string sll, string end
                    string ma = reader.GetString(0);
                    string ten = reader.GetString(1);
                    string sdt = reader.GetString(2);
                    string diachi = reader.GetString(3);
                    string avt = reader.GetString(4);

                    Ps.Add(new PersonalP(ma, ten, sdt, diachi, avt));


                }
                reader.Close();
                return View(Ps);

            }

            return View();
        }



        public ActionResult PayUpCart()
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
            cmd.CommandText = "select d.TenSP, convert(varchar (10),SoLuong,101), Size, convert(varchar (10),DonGia,101),Hinh1,s.AvatarSeller,s.TenSeller,c.MaGioHang,convert(varchar,c.SoLuong * d.DonGia,101)  from SELLER s,MANAGE m,Cart c, Product d where c.MaBuyer='" + buyr.MaBuyer + "' and c.MaSP=d.MaSP and m.MaQL=d.MaQL and d.MaQL=s.MaQL";

            cmd.Connection = sqlCon;
            List<cart> carts = new List<cart>();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string ten = reader.GetString(0);
                string sluong = reader.GetString(1);
                string size = reader.GetString(2);
                string dongia = reader.GetString(3);
                string hinh = reader.GetString(4);
                string avt = reader.GetString(5);
                string tensh = reader.GetString(6);
                string magh = reader.GetString(7);
                string tong = reader.GetString(8);
                carts.Add(new cart(ten, sluong, size, dongia, hinh, avt, tensh, magh, tong));

            }
            reader.Close();

            return View(carts);

        }

        string IDORDER()
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
            cmd.CommandText = "select * from ORDER_DETAILS";

            cmd.Connection = sqlCon;
            int count = 0;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string ten = reader.GetString(0);
                count++;

            }
            count = count + 1;
            reader.Close();

            return count.ToString();

        }

        public ActionResult Order()
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
            string ID = IDORDER();

            cmd.CommandText = "EXEC DatHang '" + buyr.MaBuyer + "','" + ID + "'";

            cmd.Connection = sqlCon;

            int qw = cmd.ExecuteNonQuery();

            return RedirectToAction("DonDatHang", "ThanhToan");

        }

        public ActionResult DonDatHang()
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
            cmd.CommandText = "select t.MaInfor,b.TenBuyer, b.SDT, b.DiaChi, p.TenSP,convert(varchar(10),t.soluong,101), t.size,convert(varchar(20), p.DonGia,101),p.MaQL, s.TenSeller, s.DiaChi, s.SDT, p.Hinh1 from ThongTinDon t, BUYER b, PRODUCT p, SELLER s where t.Mabuyer='"+buyr.MaBuyer+"' and t.Masp=p.MaSP and p.MaQL = s.MaQL and b.MaBuyer=t.Mabuyer";

            cmd.Connection = sqlCon;
            List<DonDatHang> dondat = new List<DonDatHang>();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string seri=reader.GetString(0);
                string tenbuyer=reader.GetString(1);
                string sdt=reader.GetString(2);
                string diachibuyer=reader.GetString(3);
                string tensp=reader.GetString(4);
                string soluong=reader.GetString(5);
                string size=reader.GetString(6);
                string dongia=reader.GetString(7);
                string mashop=reader.GetString(8);
                string tenshop=reader.GetString(9);
                string diachishop=reader.GetString(10);
                string sdtshop=reader.GetString(11);
                string hinh=reader.GetString(12);
                dondat.Add(new DonDatHang(seri, tenbuyer,sdt,diachibuyer,tensp,soluong,size,dongia,mashop,tenshop,diachishop,sdtshop,hinh));

            }
            reader.Close();

            return View(dondat);
        }
    }
}