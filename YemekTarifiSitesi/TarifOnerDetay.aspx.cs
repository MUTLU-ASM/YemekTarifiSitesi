using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifid"];
            if (Page.IsPostBack == false)
            {

            SqlCommand komut = new SqlCommand("Select * from tarifler where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtTarifAd.Text = dr[1].ToString();
                txtMalzemeler.Text = dr[2].ToString();
                txtYapilis.Text = dr[3].ToString();
                txtOneren.Text = dr[5].ToString();
                txtMail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();

                SqlCommand komut2 = new SqlCommand("Select * from kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                dropListKategori.DataTextField = "ad";
                dropListKategori.DataValueField = "kategoriid";

                dropListKategori.DataSource = dr2;
                dropListKategori.DataBind();
                bgl.baglanti().Close();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //Güncelleme
            SqlCommand komut = new SqlCommand("Update tarifler set durum=1 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Yemeği anasayfaya ekleme
            SqlCommand komut1 = new SqlCommand("Insert into yemekler (ad,malzeme,tarif,kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut1.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut1.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut1.Parameters.AddWithValue("@p4", dropListKategori.SelectedValue);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut3 = new SqlCommand("update kategoriler set adet = adet + 1 where kategoriid=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", dropListKategori.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}