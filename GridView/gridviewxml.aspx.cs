using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridView
{
    public partial class gridviewxml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet tb = new DataSet();

            tb.ReadXml(Request.PhysicalApplicationPath + "banco\\listacursos.xml");

            GridView2.DataSource = tb;
            GridView2.DataBind();

        }
    }
}