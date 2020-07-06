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
                PanelLogin.Visible = true;
                PanelRegister.Visible = false;
            }
        }

        protected void sign_up(object sender, EventArgs e)
        {
            PanelLogin.Visible = false;
            PanelRegister.Visible = true;
        }

        protected void sign_in(object sender, EventArgs e)
        {
         
            PanelLogin.Visible = true;
            PanelRegister.Visible = false;
           
        }

    }
}