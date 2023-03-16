using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void clear()
        {
            txtMail.Text = "";
            txtMalzemeler.Text = "";
            txtTarifAd.Text = "";
            txtTarifiOneren.Text = "";
            txtYapilis.Text = "";
            txtTarifAd.Focus();
        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tarifler (ad,malzeme,yapilis,resim,sahip,mail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", fileResim.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifiOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtMail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Tarifiniz Alınmıştır.') </script>");
            clear();

        }
    }
}