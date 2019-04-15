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
    
    public partial class Pro
    {
        public Pro()
        {
            this.ProDet = new HashSet<ProDet>();
            this.ProSlideImg = new HashSet<ProSlideImg>();
            this.RcptBuyDet = new HashSet<RcptBuyDet>();
        }
    
        public int ShpId { get; set; }
        public int ProId { get; set; }
        public int CatId { get; set; }
        public int BrandId { get; set; }
        public int ProQuantity { get; set; }
        public bool IsOutOfStock { get; set; }
        public string ProName { get; set; }
        public string Img { get; set; }
        public string Desc { get; set; }
        public string DescShort { get; set; }
        public string Price { get; set; }
        public string PriceAfter { get; set; }
        public Nullable<bool> Active { get; set; }
        public Nullable<System.DateTime> DateAdd { get; set; }
        public Nullable<System.DateTime> DateEdit { get; set; }
    
        public virtual ProBrand ProBrand { get; set; }
        public virtual ProCat ProCat { get; set; }
        public virtual ICollection<ProDet> ProDet { get; set; }
        public virtual ICollection<ProSlideImg> ProSlideImg { get; set; }
        public virtual ICollection<RcptBuyDet> RcptBuyDet { get; set; }
        public virtual Shp Shp { get; set; }
    }
}
