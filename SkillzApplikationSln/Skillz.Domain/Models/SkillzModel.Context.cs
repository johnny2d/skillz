﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Skillz.Domain.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SkillzModelContainer : DbContext
    {
        public SkillzModelContainer()
            : base("name=SkillzModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<UserDO> User { get; set; }
        public virtual DbSet<SkillDO> Skill { get; set; }
        public virtual DbSet<SportDO> Sport { get; set; }
        public virtual DbSet<SkillTimeDO> SkillTime { get; set; }
        public virtual DbSet<ExerciseDO> Exercise { get; set; }
    }
}
