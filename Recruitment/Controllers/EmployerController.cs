﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Recruitment.Controllers
{
    public class EmployerController : Controller
    {
        // GET: Employer
        public ActionResult Profile()
        {
            
            return View();
        }

        public ActionResult Messages()
        {
            return View();
        }
    }
}