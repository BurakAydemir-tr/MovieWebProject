using Entities.Concrete.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IRatingService
    {
        List<Rating> GetAll();
        List<Rating> GetAllByMovieId(int movieId);
        Rating GetById(int id);
        void Add(Rating rating);
        void Update(Rating rating);
        void Delete(Rating rating);
    }
}
