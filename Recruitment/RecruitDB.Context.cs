﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RecruitDBEntities : DbContext
    {
        public RecruitDBEntities()
            : base("name=RecruitDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Candidate> Candidates { get; set; }
        public virtual DbSet<CandidateDetail> CandidateDetails { get; set; }
        public virtual DbSet<CandidateWorkItem> CandidateWorkItems { get; set; }
        public virtual DbSet<Employer> Employers { get; set; }
        public virtual DbSet<EmployerDetail> EmployerDetails { get; set; }
        public virtual DbSet<EmployerUser> EmployerUsers { get; set; }
        public virtual DbSet<Message> Messages { get; set; }
        public virtual DbSet<Offer> Offers { get; set; }
        public virtual DbSet<Tech> Techs { get; set; }
    }
}
