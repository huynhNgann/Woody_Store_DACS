using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Woody_DT.Models
{
    public class RegisterModel
    {
        [Required(ErrorMessage ="Bạn chưa nhập tài khoản")]
        [Display(Name = "Tên đăng nhập")]
        [StringLength(50,ErrorMessage ="Tài khoản chỉ nhập tối đa 50 kí tự")]
        public string UserName { set; get; }

        [Required(ErrorMessage ="Bạn chưa nhập mật khẩu")]
        [Display(Name = "Mật khẩu")]
        [StringLength(50, MinimumLength = 6, ErrorMessage = "Độ dài mật khẩu ít nhất 6 ký tự.")]
        public string Password { set; get; }

       [Compare("Password", ErrorMessage = "Xác nhận mật khẩu không đúng.")]
        [Display(Name = "Xác nhận mật khẩu")]
        public string ConfirmPassword { set; get; }

        [Display(Name = "Họ tên")]
        [Required(ErrorMessage = "Yêu cầu nhập họ tên")]
        public string Name { set; get; }

        [Display(Name = "Địa chỉ")]
        public string Address { set; get; }

        [Required(ErrorMessage = "Yêu cầu nhập email")]
        [Display(Name = "Email")]
        public string Email { set; get; }

      
    }
}

   