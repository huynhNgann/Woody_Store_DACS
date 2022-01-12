using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class ContentDAO
    {
        ShopOnlineDbContext db = null;
        public ContentDAO()
        {
            db = new ShopOnlineDbContext();
        }
        public Content GetByID(long id)
        {
            return db.Contents.Find(id);
        }
    }
}
