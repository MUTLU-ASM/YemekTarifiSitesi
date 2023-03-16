using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["kategoriid"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("select * from kategoriler ", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.baglanti().Close();


            // silme islemi

            if (islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from kategoriler where kategoriid=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            panel.Visible = false;
            panel2.Visible = false;         
        }

        protected void btnArtı_Click(object sender, EventArgs e)
        {
            panel.Visible = true;
            panel3.Visible = false;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel3.Visible = true;
        }

        protected void btnArtıEkle_Click(object sender, EventArgs e)
        {
            panel2.Visible = true;
        }

        protected void btnEksiEkle_Click(object sender, EventArgs e)
        {
            panel2.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into kategoriler (ad) values (@p1)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtAd.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}