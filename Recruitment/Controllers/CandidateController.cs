using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Recruitment.Models;

namespace Recruitment.Controllers
{
    public class CandidateController : Controller
    {
        // GET: Candidate
        public ActionResult CandidateProfile()
        {
            CandidateModel model = new CandidateModel();

            model.FirstName = "Jonno";
            model.LastName = "Budworth";
            model.FullName = "Jonno Budworth";
            model.Email = "jonnobud@gmail.com";
            model.Address = "Flat 2, The lighthouse, 15 Chine Crescent Road";
            model.PostCode = "BH2 5DA";
            model.CandidateID = 1;
            model.Contract = false;
            model.Permanent = true;
            model.Onsite = false;
            model.Remote = true;
            //> English </ option >
            //                < option value = "DE" > German </ option >
            //                 < option value = "FR" > French <
            model.Languages = new List<LanguagesSpokenModel.LanguagesSpoken>();
            string[] languages = { "English", "French", "German" };

            for (int i = 0; i < 3; i++)
            {
                LanguagesSpokenModel.LanguagesSpoken Language = new LanguagesSpokenModel.LanguagesSpoken();

                Language.sLanguageID = i + 1;
                Language.sLanguageName = languages[i];

                model.Languages.Add(Language);
            }


            model.TechStack = new List<TechStackModel.TechStack>();
            string[] techs = { "C#", "CSS", "JS" };

            for (int i = 0; i < 3; i++)
            {
                TechStackModel.TechStack Tech = new TechStackModel.TechStack();

                Tech.tStackID = i + 1;
                Tech.tStackName = techs[i];

                model.TechStack.Add(Tech);
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult SaveProfile(CandidateModel model)
        {

            return RedirectToAction("CandidateProfile", model);
        }
    }
}