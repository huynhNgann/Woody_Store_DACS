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
    public class GiohangsController : Controller
    {
        private ShopOnlineDbContext db = new ShopOnlineDbContext();

        // GET: Admin/Giohangs
        public ActionResult Index()
        {
            return View(db.Giohangs.ToList());
        }

        // GET: Admin/Giohangs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giohang giohang = db.Giohangs.Find(id);
            if (giohang == null)
            {
                return HttpNotFound();
            }
            return View(giohang);
        }

        // GET: Admin/Giohangs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Giohangs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Createdate,CustomerID,ShipName,ShipMobile,ShipAdrress,ShipEmail,Status")] Giohang giohang)
        {
            if (ModelState.IsValid)
            {
                db.Giohangs.Add(giohang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(giohang);
        }

        // GET: Admin/Giohangs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giohang giohang = db.Giohangs.Find(id);
            if (giohang == null)
            {
                return HttpNotFound();
            }
            return View(giohang);
        }

        // POST: Admin/Giohangs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Createdate,CustomerID,ShipName,ShipMobile,ShipAdrress,ShipEmail,Status")] Giohang giohang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(giohang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(giohang);
        }

        // GET: Admin/Giohangs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Giohang giohang = db.Giohangs.Find(id);
            if (giohang == null)
            {
                return HttpNotFound();
            }
            return View(giohang);
        }

        // POST: Admin/Giohangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Giohang giohang = db.Giohangs.Find(id);
            db.Giohangs.Remove(giohang);
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
