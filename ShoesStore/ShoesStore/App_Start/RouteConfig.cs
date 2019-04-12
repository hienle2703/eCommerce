using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace ShoesStore
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings
            {
                AutoRedirectMode = RedirectMode.Permanent
            };
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("Home", "", "~/Default.aspx");
            routes.MapPageRoute("Product", "san-pham", "~/Customer/Pro_List.aspx");
            routes.MapPageRoute("Admin", "quan-tri", "~/Admin/Default.aspx");
            routes.MapPageRoute("ManagerAdministrator", "quan-tri/web-master", "~/Admin/ManageAdministrator.aspx");
            routes.MapPageRoute("ManagerCustomer", "quan-tri/customer", "~/Admin/ManageCustomer.aspx");
            routes.MapPageRoute("ManagerMerchant", "quan-tri/merchant", "~/Admin/ManageMerchant.aspx");
            routes.MapPageRoute("ManagerProduct", "quan-tri/san-pham", "~/Admin/ManageProduct.aspx");
            routes.MapPageRoute("ManagerReceipt-Customer", "quan-tri/hoa-don-cus", "~/Admin/ManageReceipt_Mer.aspx");
            routes.MapPageRoute("ManagerReceipt-Merchant", "quan-tri/hoa-don-mer", "~/Admin/ManageReceipt_Cus.aspx");
            routes.MapPageRoute("ManagerService", "quan-tri/goi-thuong-nien", "~/Admin/ManageService.aspx");
        }
    }
}
