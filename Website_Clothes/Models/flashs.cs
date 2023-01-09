using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class flashs
    {
        string masp;
        string tensp;
        string hinh;
        string sl;
        string thoigiankt;

        public string Tensp { get => tensp; set => tensp = value; }
        public string Hinh { get => hinh; set => hinh = value; }
        public string Sl { get => sl; set => sl = value; }
        public string Thoigiankt { get => thoigiankt; set => thoigiankt = value; }
        public string Masp { get => masp; set => masp = value; }

       
        public flashs(string namesp, string imgg, string sll, string end)
        {
            this.tensp = Tensp;
            this.sl = sll;
            this.Hinh = imgg;
            this.Thoigiankt = end;
        }



    }
}