using AutoMapper;
using Business.Abstract;
using DataAccess.Abstarct;
using Entities.Concrete.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrte
{
    public class RatingManager : IRatingService
    {
        private readonly IRatingDal _ratingDal;
        private readonly IMapper mapper;

        public RatingManager(IRatingDal ratingDal, IMapper mapper)
        {
            _ratingDal = ratingDal;
            this.mapper = mapper;
        }

        public void Add(Rating rating)
        {
            _ratingDal.Add(rating);
        }

        public void Delete(Rating rating)
        {
            _ratingDal.Delete(rating);
        }

        public List<Rating> GetAll()
        {
            return _ratingDal.GetAll();
        }

        public List<Rating> GetAllByMovieId(int movieId)
        {
            return _ratingDal.GetAll(x=>x.MovieId==movieId);
        }

        public Rating GetById(int id)
        {
            return _ratingDal.Get(x=>x.Id==id);
        }

        public void Update(Rating rating)
        {
            _ratingDal.Update(rating);
        }
    }
}
