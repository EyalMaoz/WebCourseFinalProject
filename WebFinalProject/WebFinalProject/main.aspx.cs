using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinalProject
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string DirPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().CodeBase);
                String solPath = DirPath.Substring(0, DirPath.Length - 4);
            }
        }

        protected void Logout_click(object sender, EventArgs e)
        {
            Session["Account"] = null;
            Response.Redirect("Server.aspx");
        }
    }
}