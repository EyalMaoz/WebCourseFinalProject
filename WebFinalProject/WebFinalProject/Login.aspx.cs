﻿using System;
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
            }
        }

        protected void signUp_page(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void login(object sender, EventArgs e)
        {
            try
            {
                using (var db = new webProjectEntities())
                {

                    var user = db.user.Where(tempAccount => tempAccount.userName.Equals(email.Text) && tempAccount.password.Equals(password.Text)).FirstOrDefault();
                    if (user == null)
                    {
                        worngEmailPass.Visible = true;
                    }
                    else
                    {
                        Session["user"] = user.userName;
                        Response.Redirect("Homepage.aspx");
                    }
                }
            }
            catch(Exception)
            {
                worngEmailPass.Visible = true;
            }

        }
    }
}