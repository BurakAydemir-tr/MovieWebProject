using AutoMapper;
using Business.Abstract;
using Business.OMDb_Service;
using Entities.Concrete.DbEntities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MoviesController : ControllerBase
    {
        private readonly IOmdbService _omdbService;
        private readonly IMovieService _movieService;
        private readonly IRatingService _ratingService;
        private readonly IMapper _mapper;

        public MoviesController(IOmdbService omdbService, IMovieService movieService, IMapper mapper, IRatingService ratingService)
        {
            _omdbService = omdbService;
            _movieService = movieService;
            _mapper = mapper;
            _ratingService = ratingService; 
        }

        [HttpGet("/AddMovieByOmdbAp/{title=}")]
        public IActionResult AddMovieByOmdbApi(string title)
        {
            var movieModel=_omdbService.GetMovieModelByTitle(title);

            if (movieModel.Result.Response=="True")
            {
                var dbMovie = _mapper.Map<Movie>(movieModel.Result);


                Movie movie = _movieService.AddReturn(dbMovie);

                foreach (var item in movieModel.Result.Ratings)
                {
                    var dbRating = _mapper.Map<Rating>(item);
                    dbRating.MovieId = movie.Id;
                    _ratingService.Add(dbRating);
                }

                return Ok("Film eklendi");
            }

            return BadRequest("Film bulunamadı");
        }
    }
}
