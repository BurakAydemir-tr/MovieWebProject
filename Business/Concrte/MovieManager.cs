using Business.Abstract;
using Business.OMDb_Service;
using DataAccess.Abstarct;
using Entities.Concrete.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrte
{
    public class MovieManager : IMovieService
    {
        private readonly IMovieDal _movieDal;

        public MovieManager(IMovieDal movieDal)
        {
            _movieDal = movieDal;
        }

        public void Add(Movie movie)
        {
            _movieDal.Add(movie);
        }

        public Movie AddReturn(Movie movie)
        {
            return _movieDal.AddReturn(movie);
        }

        public void Delete(Movie movie)
        {
            _movieDal.Delete(movie);
        }

        public List<Movie> GetAll()
        {
            return _movieDal.GetAll();
        }

        public Movie GetById(int id)
        {
            return _movieDal.Get(m=>m.Id == id);    
        }

        public void Update(Movie movie)
        {
            _movieDal.Update(movie);
        }
    }
}
