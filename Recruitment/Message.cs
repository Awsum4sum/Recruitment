//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Recruitment
{
    using System;
    using System.Collections.Generic;
    
    public partial class Message
    {
        public int MessageID { get; set; }
        public int OfferID { get; set; }
        public string MessageText { get; set; }
        public int CandidateID { get; set; }
        public int EmployerID { get; set; }
    
        public virtual Candidate Candidate { get; set; }
        public virtual Employer Employer { get; set; }
        public virtual Offer Offer { get; set; }
    }
}
