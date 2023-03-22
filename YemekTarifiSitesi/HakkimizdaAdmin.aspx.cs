using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack==false) { 
            SqlCommand komut = new SqlCommand("select * from hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtHakkimizda.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
            }
        }

        protected void btnArtı_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update hakkimizda set metin=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtHakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}