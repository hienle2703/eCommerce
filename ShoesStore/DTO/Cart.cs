//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DTO
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cart
    {
        public Cart()
        {
            this.CartDets = new HashSet<CartDet>();
        }
    
        public int CartId { get; set; }
        public Nullable<int> CusId { get; set; }
        public string IpAddress { get; set; }
    
        public virtual Cu Cu { get; set; }
        public virtual ICollection<CartDet> CartDets { get; set; }
    }
}