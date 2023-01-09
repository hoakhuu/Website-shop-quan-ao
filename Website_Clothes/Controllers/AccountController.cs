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

    public class AccountController : Controller
    {
        QLQADataContext db = new QLQADataContext();
        // GET: Category
        string strCon = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QL_QUANAOO;Integrated Security=True";
        SqlConnection sqlCon = null;
       
        // GET: Account
        public ActionResult DangNhap()
        {
            return View();
        }

       

        public string LayMa ()
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
            cmd.CommandText = "SELECT TOP 1 MaLogin FROM dbo.LOGINS where VaiTro='Buyer' ORDER BY MaLogin DESC";

            cmd.Connection = sqlCon;

            SqlDataReader reader = cmd.ExecuteReader();
            string kq="" ;
            while (reader.Read())
            {
                string masp = reader.GetString(0);
                int dem = masp.Length-1;
              int demm =int.Parse( masp.Substring(1, dem))+1;
                string dau = masp.Substring(0, 2);
                 kq = dau + demm;
                
            }
            reader.Close();
            return kq;
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection fc)
        {
            string TaiKhoan = fc["TenDN"];
            string MatKhau = fc["Matkhau"];
            string DK_TK = fc["TenDN_DK"];
            string MK_TK= fc["MK_DK1"];
            string XNMK_TK = fc["XNMK"];

            if (TaiKhoan != "" && MatKhau != "")
            {
                if (string.IsNullOrEmpty(TaiKhoan))
                {
                    ViewData["Loi2"] = "Tên đăng nhập không được để trống";
                }
                if (string.IsNullOrEmpty(MatKhau))
                {
                    ViewData["Loi3"] = "Mật khẩu không được để trống";
                }
                if (!string.IsNullOrEmpty(TaiKhoan) && !string.IsNullOrEmpty(MatKhau))
                {
                    LOGIN lg = db.LOGINs.SingleOrDefault(x => x.TenLogin == TaiKhoan && x.MatKhauLogin == MatKhau );
                    if (lg == null)
                        ViewData["LoiDN"] = "Tài khoản hoặc mật khẩu không chính xác";
                    else if(lg.VaiTro=="buyer")
                    {
                        Session["LG"] = lg;
                        BUYER buyr = db.BUYERs.SingleOrDefault(x => x.MaLogin == lg.MaLogin);
                        Session["BR"] = buyr;
                        return RedirectToAction("PersonalPage", "Account");
                    }
                    else if(lg.VaiTro=="seller")
                    {
                        Session["LG"] = lg;
                        SELLER selr = db.SELLERs.SingleOrDefault(x => x.MaLogin == lg.MaLogin);
                        Session["SL"] = selr;
                        MANAGE man = db.MANAGEs.SingleOrDefault(x => x.MaQL == selr.MaQL);
                        Session["MA"] = man;
                        return RedirectToAction("PersonalPage", "Account");
                    }
                }
            }
            else if(DK_TK != "" && MK_TK!="" && XNMK_TK!="")
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
                string idmk = LayMa();
                if (MK_TK == XNMK_TK)
                {
                    cmd.CommandText = "insert into dbo.LOGINS values ('" + idmk + "','" + DK_TK + "','" + MK_TK + "','buyer','user.jpg')  ";

                    cmd.Connection = sqlCon;

                    int qw= cmd.ExecuteNonQuery();
                    
                   
                    return RedirectToAction("DangNhap", "Account");
                }

            }
            return View();
        }


        public ActionResult PersonalPage ()
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
                if (lg.VaiTro == "buyer")
                {
                    cmd.CommandText = "select MaBuyer,TenBuyer,SDT,DiaChi,AvatarBuyer from Buyer where MaLogin ='" + lg.MaLogin + "'";
                }
                else
                {
                    cmd.CommandText = "select MaSeller,TenSeller,SDT,DiaChi,AvatarSeller from Seller where MaLogin ='" + lg.MaLogin + "'";
                }

                cmd.Connection = sqlCon;

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {// namesp, string imgg, string sll, string end
                    string ma = reader.GetString(0);
                    string ten = reader.GetString(1);
                    string sdt = reader.GetString(2);
                    string diachi = reader.GetString(3);
                    string avt = reader.GetString(4);

                    Ps.Add(new PersonalP(ma, ten, sdt, diachi,avt));


                }
                reader.Close();
                return View(Ps);

            }

            return View();

        }


        public ActionResult PersonalPage1()
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
                if (lg.VaiTro == "buyer")
                {
                    cmd.CommandText = "select MaBuyer,TenBuyer,SDT,DiaChi,AvatarBuyer from Buyer where MaLogin ='" + lg.MaLogin + "'";
                }
                else
                {
                    cmd.CommandText = "select MaSeller,TenSeller,SDT,DiaChi,AvatarSeller from Seller where MaLogin ='" + lg.MaLogin + "'";
                }

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

        public ActionResult Saveinfor (string hvt,string phone, string addr,string filename)
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
                
               
                    cmd.CommandText = "update dbo.BUYER set TenBuyer=N'"+hvt+"', SDT='"+phone+"',DiaChi=N'"+addr+"',AvatarBuyer='"+filename+"' where MaLogin ='"+lg.MaLogin+ "' ";

                    cmd.Connection = sqlCon;

                    int qw = cmd.ExecuteNonQuery();


                    return RedirectToAction("PersonalPage", "Account");
                
            }
            return RedirectToAction("PersonalPage", "Account");

        }


        



    }
}