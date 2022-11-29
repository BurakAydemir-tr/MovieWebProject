using Business.Abstract;
using Entities.Concrete.DbEntities;
using FluentValidation;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebMVC.Controllers
{
    public class MovieController : Controller
    {
        private IMovieService _movieService;
        private readonly IValidator<Movie> _validator;

        public MovieController(IMovieService movieService, IValidator<Movie> validator)
        {
            _movieService = movieService;
            _validator = validator;
        }

        [AllowAnonymous]
        public IActionResult Index()
        {
            var values=_movieService.GetAll();
            return View(values);
        }

        [AllowAnonymous]
        public IActionResult MovieDetail(int id)
        {
            var value=_movieService.GetById(id);
            return View(value);
        }

        [HttpGet]
        public IActionResult EditMovie(int id) 
        {
            var movie = _movieService.GetById(id);
            return View(movie);
        }

        [HttpPost]
        public IActionResult EditMovie(Movie movie)
        {
            _movieService.Update(movie);
            return RedirectToAction("Index", "Admin");
        }

        [HttpGet]
        public IActionResult AddMovie() 
        {
            return View();
        }

        [HttpPost]
        public IActionResult AddMovie(Movie movie)
        {
            IValidationContext validationContext=new ValidationContext<Movie>(movie);
            ValidationResult validationResult=_validator.Validate(validationContext);
            if (validationResult.IsValid)
            {
                _movieService.Add(movie);
                return RedirectToAction("Index", "Admin");
            }else
            {
                foreach (var item in validationResult.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }
            }
            return View();
        }

        public IActionResult DeleteMovie(int id) 
        {
            var deleteMovie= _movieService.GetById(id);
            _movieService.Delete(deleteMovie);
            return RedirectToAction("Index","Admin");
        }
    }
}
