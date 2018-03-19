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
    
    public partial class Offer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Offer()
        {
            this.Messages = new HashSet<Message>();
        }
    
        public int OfferID { get; set; }
        public decimal OfferAmount { get; set; }
        public int CandidateID { get; set; }
        public int EmployerID { get; set; }
        public string OfferDesc { get; set; }
    
        public virtual Candidate Candidate { get; set; }
        public virtual Employer Employer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Messages { get; set; }
    }
}
