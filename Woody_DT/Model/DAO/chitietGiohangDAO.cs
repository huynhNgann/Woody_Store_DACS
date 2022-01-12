using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class chitietGiohangDAO
    {
        ShopOnlineDbContext db = null;
        public chitietGiohangDAO()
        {
            db = new ShopOnlineDbContext();
        }
        public bool Insert(Chitietgiohang detail)
        {
            try
            {
                db.Chitietgiohangs.Add(detail);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}
