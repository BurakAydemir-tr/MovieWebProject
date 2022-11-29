using Business.Abstract;
using Business.Helper.Hashing;
using Entities.Concrete.DbEntities;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrte
{
    public class AuthManager : IAuthService
    {
        private readonly IUserService _userService;

        public AuthManager(IUserService userService)
        {
            _userService = userService;
        }

        public ResultDTO<User> Login(UserLoginDto userLoginDto)
        {
            var userToCheck=_userService.GetByEmail(userLoginDto.Email);
            if (userToCheck == null)
            {
                return new ResultDTO<User> {Success=false, Message="Böyle bir kullanıcı bulunamadı." }; 
            }

            if (!HashingHelper.VerifyPasswordHash
                (userLoginDto.Password,userToCheck.PasswordHash,userToCheck.PasswordSalt))
            {
                return new ResultDTO<User> { Success = false, Message = "Yanlış kullanıcı adı veya şifre girdiniz." };
                throw new Exception();
            }
            return new ResultDTO<User> {Success=true, Data= userToCheck } ;
        }

        public ResultDTO<User> Register(UserRegisterDto userRegisterDto)
        {
            byte[] passwordHash, passwordSalt;

            HashingHelper.CreatePasswordHash(userRegisterDto.Password, out passwordHash, out passwordSalt);
            var user = new User
            {
                Name = userRegisterDto.Name,
                Surname = userRegisterDto.Surname,
                Email = userRegisterDto.Email,
                PasswordHash = passwordHash,
                PasswordSalt = passwordSalt
            };
            _userService.Add(user);
            return new ResultDTO<User> {Success=true, Data=user };


        }

        public bool UserExists(string email)
        {
            if (_userService.GetByEmail(email) != null)
            {
                throw new Exception("Böyle bir kullanıcı bulunmaktadır.");
            }
            return true;
        }
    }
}
