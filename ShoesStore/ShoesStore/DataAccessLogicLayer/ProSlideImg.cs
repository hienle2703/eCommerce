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
    
    public partial class ProSlideImg
    {
        public int SlideImgId { get; set; }
        public Nullable<int> ShpId { get; set; }
        public Nullable<int> ProId { get; set; }
        public string Img { get; set; }
    
        public virtual Pro Pro { get; set; }
    }
}
