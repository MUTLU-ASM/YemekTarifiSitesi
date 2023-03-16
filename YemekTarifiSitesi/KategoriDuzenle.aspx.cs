using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
             id = Request.QueryString["kategoriid"];
            if (Page.IsPostBack==false)
            {
            SqlCommand komut = new SqlCommand("Select * from kategoriler where kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtKategoriAd.Text = dr[1].ToString();
                txtAdet.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update kategoriler set ad=@p1,adet=@p2 where kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2",txtAdet.Text);
            komut.Parameters.AddWithValue("@p3",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            txtAdet.Text = "";
            txtKategoriAd.Text = "";
            txtKategoriAd.Focus();
        }
    }
}