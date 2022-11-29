using AutoMapper;
using Entities.Concrete.DbEntities;
using Entities.Concrete.JsonData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Helper.AutoMapperProfiles
{
    public class MovieProfile : Profile
    {
        public MovieProfile()
        {
            CreateMap<MovieModel,Movie>().ReverseMap();
            CreateMap<RatingModel,Rating>().ReverseMap();
        }
    }
}
