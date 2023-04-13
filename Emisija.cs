using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace B14
{
    public class Emisija
    {
        public string vreme { get; set; }
        public string naziv { get; set; }
        public string tip { get; set; }
        public string slika { get; set; }

        public Emisija() { }
        public Emisija(string vreme, string naziv, string tip, string slika)
        {
            this.vreme = vreme;
            this.naziv = naziv;
            this.tip = tip;
            this.slika = slika;
        }

        public static List<Emisija> ucitaj(StreamReader r)
        {
            List<Emisija> sveEmisije = new List<Emisija>();
            while (!r.EndOfStream)
            {
                string[] p = r.ReadLine().Split('|');
                Emisija x = new Emisija(p[0], p[1], p[2], p[3]);
                sveEmisije.Add(x);
            }
            return sveEmisije;
        }
    }
}