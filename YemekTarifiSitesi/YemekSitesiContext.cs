using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public class YemekSitesiContext
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-SBTQ48V\SQLEXPRESS; Initial Catalog = YemekTarifi; integrated security = True");
            baglan.Open();
            return baglan;
        }
    }
}