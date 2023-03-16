using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumid"];
            if (Page.IsPostBack == false)
            {
            SqlCommand komut = new SqlCommand("Select adsoyad,mail,icerik,ad From yorumlar inner join yemekler on yorumlar.yorumid=yemekler.yemekid where yorumid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txtIcerik.Text = dr[2].ToString();
                txtYemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update yorumlar set icerik=@p1,onay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}