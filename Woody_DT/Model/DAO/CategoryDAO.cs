using Model.EF;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
   public class CategoryDAO
    {
        ShopOnlineDbContext db = null;
        public CategoryDAO()
        {
            db = new ShopOnlineDbContext();
        }
        public List<Category> ListAll()
        {
      //      var connectionString = ConfigurationManager.ConnectionStrings["ShopOnlineDBContext"].ToString();
            return db.Categories.Where(x => x.Status == true).ToList();
        }
        public long Insert(Category category)
        {
            db.Categories.Add(category);
            db.SaveChanges();
            return category.ID;
        }
       public ProductCategory ViewDetail(long id)
        {
            return db.ProductCategories.Find(id);
        }
    }
}
