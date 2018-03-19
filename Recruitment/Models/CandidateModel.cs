using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Recruitment.Models
{
    public class CandidateModel
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string PostCode { get; set; }
        public int CandidateID { get; set; }
        public List<LanguagesSpokenModel.LanguagesSpoken> Languages { get; set; }
        public List<TechStackModel.TechStack> TechStack { get; set; }
        public bool Remote { get; set; }
        public bool Onsite { get; set; }
        public bool Contract { get; set; }
        public bool Permanent { get; set; }
    }
    
}