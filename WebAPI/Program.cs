using Business.Abstract;
using Business.Concrte;
using Business.Helper.AutoMapperProfiles;
using Business.OMDb_Service;
using DataAccess.Abstarct;
using DataAccess.Concrete;

namespace WebAPI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddAutoMapper(typeof(MovieProfile));
            builder.Services.AddHttpClient();
            
            builder.Services.AddScoped<IOmdbService,OmdbManager>();
            builder.Services.AddScoped<IMovieService, MovieManager>();
            builder.Services.AddScoped<IMovieDal, EfMovieDal>();
            builder.Services.AddScoped<IRatingService, RatingManager>();
            builder.Services.AddScoped<IRatingDal, EfRatingDal>();
            builder.Services.AddScoped<IUserService, UserManager>();
            builder.Services.AddScoped<IUserDal, EfUserDal>();

            builder.Services.AddScoped<IAuthService, AuthManager>();


            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}