using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class BiaSP
    {
        string hinhsp;
        string tensp;
        string gia;
        string masp;
        public string Hinhsp { get => hinhsp; set => hinhsp = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Gia { get => gia; set => gia = value; }
        public string Masp { get => masp; set => masp = value; }

        public BiaSP(string hinhsp,string tensp,string gia,string msppp)
        {
            this.hinhsp = hinhsp;
            this.tensp = tensp; 
            this.gia = gia;
            this.masp = msppp;
        }
    }
}