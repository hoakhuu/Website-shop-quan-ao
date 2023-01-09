using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class DonDatHang
    {
        string seri;
        string tenbuyer;
        string sdt;
        string diachibuyer;
        string tensp;
        string soluong;
        string size;
        string dongia;
        string mashop;
        string tenshop;
        string diachishop;
        string sdtshop;
        string hinh;

        public DonDatHang(string seri, string tenbuyer, string sdt, string diachibuyer, string tensp, string soluong, string size, string dongia, string mashop, string tenshop, string diachishop, string sdtshop, string hinh)
        {
            this.seri = seri;
            this.tenbuyer = tenbuyer;
            this.sdt = sdt;
            this.diachibuyer = diachibuyer;
            this.tensp = tensp;
            this.soluong = soluong;
            this.size = size;
            this.dongia = dongia;
            this.mashop = mashop;
            this.tenshop = tenshop;
            this.diachishop = diachishop;
            this.sdtshop = sdtshop;
            this.hinh = hinh;
        }

        public string Seri { get => seri; set => seri = value; }
        public string Tenbuyer { get => tenbuyer; set => tenbuyer = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Diachibuyer { get => diachibuyer; set => diachibuyer = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Soluong { get => soluong; set => soluong = value; }
        public string Size { get => size; set => size = value; }
        public string Dongia { get => dongia; set => dongia = value; }
        public string Mashop { get => mashop; set => mashop = value; }
        public string Tenshop { get => tenshop; set => tenshop = value; }
        public string Diachishop { get => diachishop; set => diachishop = value; }
        public string Sdtshop { get => sdtshop; set => sdtshop = value; }
        public string Hinh { get => hinh; set => hinh = value; }
    }
}