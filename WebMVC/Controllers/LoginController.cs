using Business.Abstract;
using Entities.Dto;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace WebMVC.Controllers
{
    [AllowAnonymous]
    public class LoginController : Controller
    {
        private readonly IAuthService _authService;

        public LoginController(IAuthService authService)
        {
            _authService = authService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(UserLoginDto userLoginDto)
        {
            var userToLogin=_authService.Login(userLoginDto);
            if (userToLogin.Success==true)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name,userToLogin.Data.Email)
                };
                var useridentity=new ClaimsIdentity(claims,"identity");
                ClaimsPrincipal claimsPrincipal=new ClaimsPrincipal(useridentity);
                await HttpContext.SignInAsync(claimsPrincipal);
                return RedirectToAction("Index","Admin");
            }
            else
            {
                TempData["ErrorMessage"] = userToLogin.Message;
                return View();
            }
            
        }

        public async Task<IActionResult> LogOut()
        {
            await HttpContext.SignOutAsync();
            return RedirectToAction("Index","Login");
        }
    }
}
