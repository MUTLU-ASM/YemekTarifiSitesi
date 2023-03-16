using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void clear()
        {
            txtmail.Text = "";
            txtKonu.Text = "";
            txtMesaj.Text = "";
            txtgonderen.Text = "";
            txtgonderen.Focus();
        }
        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into mesajlar (gonderen,baslik,mail,icerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtgonderen.Text);
            komut.Parameters.AddWithValue("@p2",txtKonu.Text);
            komut.Parameters.AddWithValue("@p3",txtmail.Text);
            komut.Parameters.AddWithValue("@p4",txtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script> alert('Mesajınız İletilmiştir.') </script>");
            Page.Response.Redirect(Page.Request.Url.ToString(), true);//yorum yapıldıktan sonra sayfanın yenilenip gösterilmesi.
            clear();
        }
    }
}