//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class SkillDO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SkillDO()
        {
            this.SkillTime = new HashSet<SkillTimeDO>();
        }
    
        public int Id { get; set; }
        public string Description { get; set; }
    
        public virtual UserDO User { get; set; }
        public virtual SportDO Sport { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SkillTimeDO> SkillTime { get; set; }
    }
}
