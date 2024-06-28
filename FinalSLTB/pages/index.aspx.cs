using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalSLTB.pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchBusses_Click(object sender, EventArgs e)
        {
            Session["FROM"] = from.Text;
            Session["TO"] = to.Text;
            Response.Redirect("result.cshtml");
        }
    }
}