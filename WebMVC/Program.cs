using Business.Abstract;
using Business.Concrte;
using Business.Helper.AutoMapperProfiles;
using Business.ValidationRules;
using DataAccess.Abstarct;
using DataAccess.Concrete;
using Entities.Concrete.DbEntities;
using Entities.Dto;
using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.Authorization;

namespace WebMVC
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            builder.Services.AddSession();

            builder.Services.AddAutoMapper(typeof(MovieProfile));
            builder.Services.AddScoped<IValidator<UserRegisterDto>,UserRegisterDtoValidator>();
            builder.Services.AddScoped<IValidator<Movie>, MovieValidator>();

            builder.Services.AddScoped<IMovieService, MovieManager>();
            builder.Services.AddScoped<IMovieDal, EfMovieDal>();
            builder.Services.AddScoped<IRatingService, RatingManager>();
            builder.Services.AddScoped<IRatingDal, EfRatingDal>();
            builder.Services.AddScoped<IUserService, UserManager>();
            builder.Services.AddScoped<IUserDal, EfUserDal>();

            builder.Services.AddScoped<IAuthService, AuthManager>();

            builder.Services.AddMvc(config =>
            {
                var policy=new AuthorizationPolicyBuilder()
                            .RequireAuthenticatedUser().Build();
                config.Filters.Add(new AuthorizeFilter(policy));
            });

            builder.Services.AddAuthentication(
                CookieAuthenticationDefaults.AuthenticationScheme)
                .AddCookie(x =>
                {
                    x.LoginPath = "/Admin/Index";
                }
                );

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();


            app.UseRouting();
            app.UseAuthentication();
            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Movie}/{action=Index}/{id?}");

            app.Run();
        }
    }
}