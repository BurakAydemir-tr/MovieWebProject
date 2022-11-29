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
    public class UserManager : IUserService
    {
        private readonly IUserDal _userDal;

        public UserManager(IUserDal userDal)
        {
            _userDal = userDal;
        }

        public void Add(User user)
        {
            _userDal.Add(user);
        }

        public void Delete(User user)
        {
            _userDal.Delete(user);
        }

        public List<User> GetAll()
        {
            return _userDal.GetAll();
        }

        public User GetByEmail(string email)
        {
            return _userDal.Get(x=>x.Email==email);
        }

        public User GetById(int id)
        {
            return _userDal.Get(x => x.Id == id);
        }

        public void Update(User user)
        {
            _userDal.Update(user);
        }
    }
}
