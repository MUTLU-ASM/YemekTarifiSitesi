using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["mesajid"];
            SqlCommand komut = new SqlCommand("Select * from mesajlar where mesajid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtGonderen.Text = dr[1].ToString();
                txtBaslik.Text = dr[2].ToString();
                txtMail.Text = dr[3].ToString();
                txtIcerik.Text = dr[4].ToString();

            }

        }
    }
}