using Entities.Concrete.DbEntities;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IAuthService
    {
        ResultDTO<User> Register(UserRegisterDto userRegisterDto);
        ResultDTO<User> Login(UserLoginDto userLoginDto);
        bool UserExists(string email);

    }
}
