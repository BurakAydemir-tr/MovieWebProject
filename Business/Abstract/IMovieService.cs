using Entities.Concrete.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IMovieService
    {
        List<Movie> GetAll();
        Movie GetById(int id);
        Movie AddReturn(Movie movie);
        void Add(Movie movie);
        void Update(Movie movie);
        void Delete(Movie movie);
    }
}
