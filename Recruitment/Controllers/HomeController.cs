using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Recruitment.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Home()
        {
            return View();
        }

        public ActionResult Employers()
        {
            ViewBag.Message = "Information for Employers";

            return View();
        }

        public ActionResult Candidates()
        {
            ViewBag.Message = "Information for Candidates";

            return View();
        }
    }
}