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
    
    public partial class SubDet
    {
        public SubDet()
        {
            this.RcptSubDet = new HashSet<RcptSubDet>();
        }
    
        public int SubId { get; set; }
        public int MerId { get; set; }
        public Nullable<System.DateTime> DateStart { get; set; }
        public Nullable<System.DateTime> DateEnd { get; set; }
    
        public virtual Mer Mer { get; set; }
        public virtual ICollection<RcptSubDet> RcptSubDet { get; set; }
        public virtual Sub Sub { get; set; }
    }
}
