using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFinalProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //all code in page_load
            }
        }

        protected void login_page(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void register(object sender, EventArgs e)
        {
            using (var db = new webProjectEntities())
            {
                if (!(password.Text.Equals(password2.Text)))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "Password and Confirm Password don't match, please enter the same password", true);
                }
                else
                {
                    var newUser = new user()
                    {
                        userName = email.Text,
                        password = password.Text,
                    };
                    try
                    {
                        db.user.Add(newUser);
                        db.SaveChanges();
                        email.Text = "";
                        password.Text = "";
                        password2.Text = "";
                    }
                    catch (Exception)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "Email already exists, please choose a different email", true);
                    }
                }
            }
        }


    }
  }
