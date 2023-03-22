using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            //Onaylı
            SqlCommand komut = new SqlCommand("Select * from tarifler where durum=0", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            //Onaysız
            SqlCommand komut1 = new SqlCommand("Select * from tarifler where durum=1", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();
        }

        protected void btnArtı_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btnAltArtı_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void btnAltEksi_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}