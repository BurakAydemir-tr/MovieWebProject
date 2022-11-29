using Entities.Concrete.JsonData;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Business.OMDb_Service
{
    public class OmdbManager : IOmdbService
    {
        

        private readonly IHttpClientFactory _factory;

        public OmdbManager(IHttpClientFactory factory)
        {
            _factory = factory;
        }

        public async Task<MovieModel> GetMovieModelByTitle(string title)
        {
            //var response = await _client.GetAsync("t=" + title);
            
            var request=new HttpRequestMessage(HttpMethod.Get, $"https://www.omdbapi.com/?apikey=fdb9451b&t={title}");
            var client=_factory.CreateClient();
            var response = client.Send(request);
            
            //response.EnsureSuccessStatusCode();

            using var responseStream = await response.Content.ReadAsStreamAsync();

            var movieModel = await JsonSerializer.DeserializeAsync<MovieModel>(responseStream);

            return movieModel;
        }

        
    }
}
