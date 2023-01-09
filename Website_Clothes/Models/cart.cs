using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class cart
    {

        string ten;
        string sl;
        string size;
        string dongia;
        string hinh;
        string hinhshop;
        string tenshop;
        string magiohang;
        string tong;

        string tongtienall;

        public cart(string tongtienall)
        {
            this.tongtienall = tongtienall;
        }

        public cart(string ten, string sl, string size, string dongia, string hinh, string hinhshop, string tenshop, string magiohang, string tong)
        {
            this.ten = ten;
            this.sl = sl;
            this.size = size;
            this.dongia = dongia;
            this.hinh = hinh;
            this.hinhshop = hinhshop;
            this.tenshop = tenshop;
            this.magiohang = magiohang;
            this.tong = tong;
        }

        public string Ten { get => ten; set => ten = value; }
        public string Sl { get => sl; set => sl = value; }
        public string Size { get => size; set => size = value; }
        public string Dongia { get => dongia; set => dongia = value; }
        public string Hinh { get => hinh; set => hinh = value; }
        public string Hinhshop { get => hinhshop; set => hinhshop = value; }
        public string Tenshop { get => tenshop; set => tenshop = value; }
        public string Magiohang { get => magiohang; set => magiohang = value; }
        public string Tong { get => tong; set => tong = value; }
        public string Tongtienall { get => tongtienall; set => tongtienall = value; }
    }
}