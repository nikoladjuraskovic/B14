using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B14
{
    public partial class Program : System.Web.UI.Page
    {

        List<Emisija> sveEmisije;

        public void ucitajTipoveEmisija()
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("");
            foreach (Emisija x in sveEmisije)
            {
                if (!DropDownList2.Items.Contains(new ListItem(x.tip)))
                    DropDownList2.Items.Add(x.tip);

            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader r = new StreamReader(Server.MapPath(DropDownList1.SelectedValue));
            sveEmisije = Emisija.ucitaj(r);
            r.Close();
            if (!IsPostBack)
                ucitajTipoveEmisija();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ucitajTipoveEmisija();
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue != "")
            {
                List<Emisija> izabraneEmisije = new List<Emisija>();
                foreach (Emisija x in sveEmisije)
                {
                    if (x.tip == DropDownList2.SelectedValue)
                        izabraneEmisije.Add(x);
                }
                GridView1.DataSource = izabraneEmisije;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = sveEmisije;
                GridView1.DataBind();
            }
        }
    }
}