using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinalProject
{
    public partial class Homepage : System.Web.UI.Page
    {
        public void Logout()
        {
            Session["Account"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}