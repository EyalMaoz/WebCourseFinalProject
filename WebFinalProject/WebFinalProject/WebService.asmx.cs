using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using System.Data.Entity.Validation;


namespace WebFinalProject
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public string LoadTasks()
        {
            try
            {
                using (var db = new webProjectEntities())
                {
                    var userName = ((user)Session["Account"]).userName;
                    user account = db.user.FirstOrDefault(u => u.userName == userName);
                    return account.tasks;
                }
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Console.WriteLine("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
                return null;
            }
        }
        [WebMethod(EnableSession = true)]
        public void SaveTasks(string tasksArray)
        {
            try
            {
                using (var db = new webProjectEntities())
                {

                    var tasksTable = JsonConvert.DeserializeObject(tasksArray);
                    var tasksTablejson = JsonConvert.DeserializeObject(tasksTable.ToString());
                    var userName = ((user)Session["Account"]).userName;
                    user account = db.user.FirstOrDefault(u => u.userName == userName);
                    account.tasks = tasksTablejson.ToString();
                    Session["Account"] = account;
                    db.SaveChanges();
                }
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Console.WriteLine("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
            }
        }
    }
}
