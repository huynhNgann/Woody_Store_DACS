using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Woody_DT.Models;

namespace Woody_DT.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
            var productDao = new ProductDAO();
            ViewBag.NewProducts = productDao.ListNewProduct(8);
            ViewBag.ListFeatureProducts = productDao.ListFeatureProduct(8);
            ViewBag.listSaleProduct = productDao.ListsaleProduct(4);
            return View();
          
        }
        /*[ChildActionOnly]
        public ActionResult MainMenu()
        {
            var model = new MenuDAO().ListByGroupId(1);
            return PartialView(model);
        }*/
        [ChildActionOnly]
        public PartialViewResult HeaderCart()
        {
            var cart = Session[Common.CommonConstants.CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;

            }
            return PartialView(list);
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}