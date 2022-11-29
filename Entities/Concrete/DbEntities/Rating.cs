using Entities.Abstract;

namespace Entities.Concrete.DbEntities
{
    public class Rating : IEntity
    {
        public int Id { get; set; }
        public string? Source { get; set; }
        public string? Value { get; set; }

        public int MovieId { get; set; }
        public Movie Movie { get; set; }
    }
}
