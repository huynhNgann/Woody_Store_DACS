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
    public class GroupUsersController : Controller
    {
        private ShopOnlineDbContext db = new ShopOnlineDbContext();

        // GET: Admin/GroupUsers
        public ActionResult Index()
        {
            return View(db.GroupUsers.ToList());
        }

        // GET: Admin/GroupUsers/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupUser groupUser = db.GroupUsers.Find(id);
            if (groupUser == null)
            {
                return HttpNotFound();
            }
            return View(groupUser);
        }

        // GET: Admin/GroupUsers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/GroupUsers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GroupID,Name")] GroupUser groupUser)
        {
            if (ModelState.IsValid)
            {
                db.GroupUsers.Add(groupUser);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(groupUser);
        }

        // GET: Admin/GroupUsers/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupUser groupUser = db.GroupUsers.Find(id);
            if (groupUser == null)
            {
                return HttpNotFound();
            }
            return View(groupUser);
        }

        // POST: Admin/GroupUsers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GroupID,Name")] GroupUser groupUser)
        {
            if (ModelState.IsValid)
            {
                db.Entry(groupUser).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(groupUser);
        }

        // GET: Admin/GroupUsers/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupUser groupUser = db.GroupUsers.Find(id);
            if (groupUser == null)
            {
                return HttpNotFound();
            }
            return View(groupUser);
        }

        // POST: Admin/GroupUsers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            GroupUser groupUser = db.GroupUsers.Find(id);
            db.GroupUsers.Remove(groupUser);
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
