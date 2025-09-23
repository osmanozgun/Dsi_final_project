using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Constants
{
    public static class Messages
    {
        public static string ProductAdded = "Ürün eklendi";
        public static string ProductNameInvalid = "Gecersiz ürün ismi";
        public static string MaintenanceTime = "Sistem Bakimda";
        public static string ProductsListed = "Ürünler Listelendi";
        public static string CategoryCountError = "En fazla 10 ürün eklenebilir";
        public static string PrimaryProductNameError = "Ürün İsmi zaten var";
        public static string CategoryLimitExceded = "Kategori limiti asildi";
        public static string AuthorizationDenied = "Yetkisiz Erişim engellendi";
    }
}
