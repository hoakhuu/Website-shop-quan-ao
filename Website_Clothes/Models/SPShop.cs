using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class SPShop
    {
        string masp;
        string tensp;
        string mota;
        string hinh1;
        string hinh2;
        string hinh3;
        string dongia;
        string tinhtrang;
        string size1;
        string size2;
        string size3;
        string maloai;
        string mabrand;

        public SPShop(string masp, string tensp, string mota, string hinh1, string hinh2, string hinh3, string dongia, string tinhtrang, string size1, string size2, string size3, string maloai, string mabrand)
        {
            this.masp = masp;
            this.tensp = tensp;
            this.mota = mota;
            this.hinh1 = hinh1;
            this.hinh2 = hinh2;
            this.hinh3 = hinh3;
            this.dongia = dongia;
            this.tinhtrang = tinhtrang;
            this.size1 = size1;
            this.size2 = size2;
            this.size3 = size3;
            this.maloai = maloai;
            this.mabrand = mabrand;
        }

        public string Masp { get => masp; set => masp = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Mota { get => mota; set => mota = value; }
        public string Hinh1 { get => hinh1; set => hinh1 = value; }
        public string Hinh2 { get => hinh2; set => hinh2 = value; }
        public string Hinh3 { get => hinh3; set => hinh3 = value; }
        public string Dongia { get => dongia; set => dongia = value; }
        public string Tinhtrang { get => tinhtrang; set => tinhtrang = value; }
        public string Size1 { get => size1; set => size1 = value; }
        public string Size2 { get => size2; set => size2 = value; }
        public string Size3 { get => size3; set => size3 = value; }
        public string Maloai { get => maloai; set => maloai = value; }
        public string Mabrand { get => mabrand; set => mabrand = value; }
    }
}