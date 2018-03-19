using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Recruitment.Models;

namespace Recruitment.Models
{
    public class BusinessModel
    {
        public string BusinessName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public int BusinessID { get; set; }
        public List<LanguagesSpokenModel.LanguagesSpoken> Languages { get; set; }
        public List<TechStackModel.TechStack> TechStack { get; set; }
        public bool Remote { get; set; }
        public bool Onsite { get; set; }
        public bool Contract { get; set; }
        public bool Permanent { get; set; }
    }
}