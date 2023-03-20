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
        }
    }
}