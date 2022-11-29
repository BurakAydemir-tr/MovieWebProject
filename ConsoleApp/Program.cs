using AutoMapper;
using Business.Concrte;
using Business.OMDb_Service;
using DataAccess.Concrete;
using Entities.Concrete.DbEntities;
using Entities.Concrete.JsonData;
using Microsoft.Extensions.DependencyInjection;
using System.Net.Http.Json;
using System.Text.Json;

namespace ConsoleApp
{
    internal class Program
    {
        //private static T DeserializeJson<T>(string JsonData)
        //{

        //    T tobject=(T)JsonSerializer.Deserialize<MovieModel>(JsonData);
        //    return tobject;
        //}
        static async Task Main(string[] args)
        {
            //string title = "Batman";

            //HttpClient client = new HttpClient();
            //string jsonStr = await client.GetStringAsync($"https://www.omdbapi.com/?apikey=fdb9451b&t={title}");

            //var movieModel = JsonSerializer.Deserialize<MovieModel>(jsonStr);

            //int i = 0;

            //ServiceCollection services = new ServiceCollection();
            //services.AddOptions<HttpClient>();





            //var config = new MapperConfiguration(createMap =>
            //{
            //    createMap.CreateMap<MovieModel, Movie>();
            //    createMap.CreateMap<RatingModel,Rating>();
            //});
            //IMapper mapper = config.CreateMapper();

            //MovieManager movieManager = new MovieManager(new EfMovieDal());

            ////OmdbManager omdbManager = new OmdbManager(new HttpClient());

            //var movieModel = omdbManager.GetMovieModelByTitle("Carter");
            //int i = 0;

            //Movie movie = mapper.Map<Movie>(movieModel);

            //movieManager.Add(movie);


            Console.WriteLine("Film eklendi");
        }
    }
}