using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Clothes.Models
{
    public class inforShop
    {
        string avt;
        string tenshop;
        string sl;

        public string Avt { get => avt; set => avt = value; }
        public string Tenshop { get => tenshop; set => tenshop = value; }
        public string Sl { get => sl; set => sl = value; }

        public inforShop(string avt, string name, string sll)
        {
            Avt = avt;
            Tenshop = name;
            Sl = sll;
        }
    }
}