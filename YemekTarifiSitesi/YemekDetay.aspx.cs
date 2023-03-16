using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select ad from yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from yorumlar where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into yorumlar (adsoyad,mail,icerik,yemekid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtMail.Text);
            komut.Parameters.AddWithValue("@p3", txtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            Page.Response.Redirect(Page.Request.Url.ToString(), true);//yorum yapıldıktan sonra sayfanın yenilenip gösterilmesi.

        }
    }
}