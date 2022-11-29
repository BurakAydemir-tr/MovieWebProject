using Business.Abstract;
using Entities.Dto;
using FluentValidation;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebMVC.Controllers
{
    [AllowAnonymous]
    public class RegisterController : Controller
    {
        private readonly IAuthService _authService;
        private readonly IValidator<UserRegisterDto> _validator;

        public RegisterController(IAuthService authService, IValidator<UserRegisterDto> validator)
        {
            _authService = authService;
            _validator = validator;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(UserRegisterDto userRegisterDto)
        {
            IValidationContext validationContext = new ValidationContext<UserRegisterDto>(userRegisterDto);
            ValidationResult result = _validator.Validate(validationContext);
            if (result.IsValid)
            {
                var userRegister=_authService.Register(userRegisterDto);
                if (userRegister.Success==true)
                {
                    return RedirectToAction("Index", "Login");
                }
                
            }else
            {
                foreach (var item in result.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }
            }
            return View();
        }
    }
}
