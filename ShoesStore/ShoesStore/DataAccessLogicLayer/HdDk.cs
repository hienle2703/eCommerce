//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ShoesStore.DataAccessLogicLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class HdDk
    {
        public HdDk()
        {
            this.Sims = new HashSet<Sim>();
        }
    
        public int MaHdDk { get; set; }
        public Nullable<int> MaKh { get; set; }
        public string ChiPhiDk { get; set; }
    
        public virtual Kh Kh { get; set; }
        public virtual ICollection<Sim> Sims { get; set; }
    }
}
