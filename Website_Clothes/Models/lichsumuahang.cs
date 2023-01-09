using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class lichsumuahang
    {

		string id;
		string tensp;
		string dongia;
		string sl;
		string thanhtien;
		string tenshop;
		string diachi;
		string sdt;
		string hinh;
        string size;
        string mabuyer;
        string masp;
        string buyer;

        public lichsumuahang(string id, string tensp, string dongia, string sl, string thanhtien, string tenshop, string diachi, string sdt, string hinh, string size, string mabuyer, string masp)
        {
            this.id = id;
            this.tensp = tensp;
            this.dongia = dongia;
            this.sl = sl;
            this.thanhtien = thanhtien;
            this.tenshop = tenshop;
            this.diachi = diachi;
            this.sdt = sdt;
            this.hinh = hinh;
            this.size = size;
            this.mabuyer = mabuyer;
            this.masp = masp;
        }
       
        public lichsumuahang(string hinh,string id, string tensp, string sl, string dongia, string thanhtien, string tenbuyer,string sdt, string diachi, string size)
        {
            this.id = id;
            this.tensp = tensp;
            this.sl = sl;
            this.dongia = dongia;
            this.hinh=hinh;
            this.thanhtien = thanhtien;
            this.buyer = tenbuyer;
            this.diachi = diachi;
            this.sdt = sdt;
            
            this.size = size;
           
        }

        public string Id { get => id; set => id = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Dongia { get => dongia; set => dongia = value; }
        public string Sl { get => sl; set => sl = value; }
        public string Thanhtien { get => thanhtien; set => thanhtien = value; }
        public string Tenshop { get => tenshop; set => tenshop = value; }
        public string Diachi { get => diachi; set => diachi = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Hinh { get => hinh; set => hinh = value; }
        public string Size { get => size; set => size = value; }
        public string Mabuyer { get => mabuyer; set => mabuyer = value; }
        public string Masp { get => masp; set => masp = value; }
        public string Buyer { get => buyer; set => buyer = value; }
    }
}