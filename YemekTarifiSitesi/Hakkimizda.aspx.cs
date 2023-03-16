using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();
            bgl.baglanti().Close();
        }
    }
}