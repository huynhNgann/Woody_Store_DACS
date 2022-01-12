using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EF;

namespace Woody_DT.Areas.Admin.Controllers
{
    public class ChitietgiohangsController : Controller
    {
        private ShopOnlineDbContext db = new ShopOnlineDbContext();

        // GET: Admin/Chitietgiohangs
        public ActionResult Index()
        {
            return View(db.Chitietgiohangs.ToList());
        }

        // GET: Admin/Chitietgiohangs/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietgiohang chitietgiohang = db.Chitietgiohangs.Find(id);
            if (chitietgiohang == null)
            {
                return HttpNotFound();
            }
            return View(chitietgiohang);
        }

        // GET: Admin/Chitietgiohangs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Chitietgiohangs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductId,OrderID,Quantity,Price")] Chitietgiohang chitietgiohang)
        {
            if (ModelState.IsValid)
            {
                db.Chitietgiohangs.Add(chitietgiohang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(chitietgiohang);
        }

        // GET: Admin/Chitietgiohangs/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietgiohang chitietgiohang = db.Chitietgiohangs.Find(id);
            if (chitietgiohang == null)
            {
                return HttpNotFound();
            }
            return View(chitietgiohang);
        }

        // POST: Admin/Chitietgiohangs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductId,OrderID,Quantity,Price")] Chitietgiohang chitietgiohang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chitietgiohang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(chitietgiohang);
        }

        // GET: Admin/Chitietgiohangs/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chitietgiohang chitietgiohang = db.Chitietgiohangs.Find(id);
            if (chitietgiohang == null)
            {
                return HttpNotFound();
            }
            return View(chitietgiohang);
        }

        // POST: Admin/Chitietgiohangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            Chitietgiohang chitietgiohang = db.Chitietgiohangs.Find(id);
            db.Chitietgiohangs.Remove(chitietgiohang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
