using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel2.Visible = false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];

                SqlCommand komut2 = new SqlCommand("Select * from kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                drpListKategori.DataTextField = "ad";
                drpListKategori.DataValueField = "kategoriid";

                drpListKategori.DataSource = dr2;
                drpListKategori.DataBind();
                bgl.baglanti().Close();
            }

            //Yemek Listesi

            SqlCommand komut = new SqlCommand("Select * from yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.baglanti().Close();

            if (islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from yemekler where yemekid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

        protected void btnArtı_Click(object sender, EventArgs e)
        {
            panel.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
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
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into yemekler (ad,malzeme,tarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMalzeme.Text);
            komut.Parameters.AddWithValue("@p3", txtTarif.Text);
            komut.Parameters.AddWithValue("@p4", drpListKategori.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori sayısını artırma
            SqlCommand komut2 = new SqlCommand("Update kategoriler set adet = adet+1 where kategoriid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",drpListKategori.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}