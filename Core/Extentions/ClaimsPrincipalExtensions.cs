using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;

namespace Core.Extentions
{
    public static class ClaimsPrincipalExtensions
    {
        public static List<string> Claims(this ClaimsPrincipal claimsPrincipal, string claimType)
        {
            // Bu satır, FindAll'dan null gelme durumunu kontrol ederek
            // boş bir liste döndürür ve hatayı engeller.
            var result = claimsPrincipal?.FindAll(claimType)?.Select(x => x.Value).ToList() ?? new List<string>();
            return result;
        }

        public static List<string> ClaimRoles(this ClaimsPrincipal claimsPrincipal)
        {
            // Artık Claims() metodu güvenli olduğu için, bu metot da doğru çalışacaktır.
            return claimsPrincipal?.Claims(ClaimTypes.Role);
        }
    }
}
