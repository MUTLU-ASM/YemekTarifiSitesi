using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        YemekSitesiContext bgl = new YemekSitesiContext();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtAd.Text = dr[1].ToString();
                    txtMalzeme.Text = dr[2].ToString();
                    txtTarif.Text = dr[3].ToString();
                    dropListKategori.Text = dr[7].ToString();
                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * from kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                dropListKategori.DataTextField = "ad";
                dropListKategori.DataValueField = "kategoriid";

                dropListKategori.DataSource = dr2;
                dropListKategori.DataBind();
                bgl.baglanti().Close();
            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Images/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update yemekler set ad=@p1,malzeme=@p2,tarif=@p3,kategoriid=@p4,resim=@p6 where yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtAd.Text);
            komut.Parameters.AddWithValue("@p2",txtMalzeme.Text);
            komut.Parameters.AddWithValue("@p3",txtTarif.Text);
            komut.Parameters.AddWithValue("@p4",dropListKategori.SelectedValue);
            komut.Parameters.AddWithValue("@p5",id);
            komut.Parameters.AddWithValue("@p6", "~/images/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void btnGununyemegi_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("update yemekler set durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yemeği için id ye göre durumu true yapalım
            SqlCommand komut1 = new SqlCommand("update yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", id);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}