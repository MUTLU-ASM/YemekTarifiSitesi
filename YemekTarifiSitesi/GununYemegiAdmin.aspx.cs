using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            panel.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

        protected void btnArtı_Click(object sender, EventArgs e)
        {
            panel.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
        }
    }
}