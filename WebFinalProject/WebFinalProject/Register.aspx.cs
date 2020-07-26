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
                    Response.Write("<script>alert('Password doesnt match')</script>");
                    return;
                }
                if (!IsValidEmail(email.Text))
                {
                    Response.Write("<script>alert('Email address is not valid')</script>");
                    return;
                }

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
                    Response.Write("<script>alert('Registered Successfully')</script>");
                    Response.Redirect("Login.aspx");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Email already exists, please choose a different email')</script>");
                }

            }
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
    }
}
