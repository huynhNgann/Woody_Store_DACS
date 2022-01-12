using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
namespace Model.DAO
{
    public class giohangDAO
    {
        ShopOnlineDbContext db = null;
        public giohangDAO()
        {
            db = new ShopOnlineDbContext();
        }
        public long Insert(Giohang order)
        {
            db.Giohangs.Add(order);
            db.SaveChanges();
            return order.ID;
        }
    }
}
