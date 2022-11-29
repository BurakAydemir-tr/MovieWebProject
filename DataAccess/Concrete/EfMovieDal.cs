using DataAccess.Abstarct;
using DataAccess.Context;
using Entities.Concrete.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete
{
    public class EfMovieDal : EfEntityRepositoryBase<Movie,MovieContext>, IMovieDal
    {
    }
}
