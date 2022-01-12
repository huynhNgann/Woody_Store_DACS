using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Woody_DT.Areas.Admin.Models;
using Woody_DT.Common;

namespace Woody_DT.Areas.Admin.Controllers
{
    public class LoginController :Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDAO();
               var result = dao.Login(model.UserName, Encryptor.MD5Hash(model.Password));
                if (result==1)
                {
                    var user = dao.GetById(model.UserName);
                    var userSession = new UserLogin();
                    userSession.UserName = user.UserName;
                    userSession.UserID = user.ID;

                    Session.Add(CommonConstants.USER_SSESSION, userSession);
                    return RedirectToAction("Index", "Home");
                }else if (result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khóa");
                }
               /* else if (result == -2)
                {
                    ModelState.AddModelError("","mật ")
                }*/
                else
                {
                    ModelState.AddModelError("", "Đăng nhập không đúng");
                }
            
            }
            return View("Login");
        }
        public ActionResult Logout()
        {
            return View();
        }

    }
}