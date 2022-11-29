using Entities.Concrete.JsonData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.OMDb_Service
{
    public interface IOmdbService
    {
        Task<MovieModel> GetMovieModelByTitle(string title);
    }
}
