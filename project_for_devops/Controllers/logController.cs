using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using project_for_devops.Models;

using System.Web.Security;

namespace project_for_devops.Controllers
{
    public class logController : Controller
    {
        // GET: log
        public ActionResult login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult login(accountlog model)
        {
            using (var context = new patient_data())
            {
                
                bool isValid=context.userlogins.Any(x => x.username == model.username && x.password == model.password);
                if(isValid)
                {
                    FormsAuthentication.SetAuthCookie(model.username, false);
                    return RedirectToAction("add","patient");
                }

                Response.Write("<script>alert('Invalid');</script>");
                ModelState.AddModelError("", "Invalid username and password");
                
            }

                return View();
        }
        public ActionResult logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("login", "log");
        }


    }
}