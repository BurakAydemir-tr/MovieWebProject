using Entities.Concrete.DbEntities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ValidationRules
{
    public class MovieValidator:AbstractValidator<Movie>
    {
        public MovieValidator()
        {
            RuleFor(x=>x.Title).NotEmpty().WithMessage("Film başlığını boş geçemezsiniz.");
            RuleFor(x => x.Title).MinimumLength(3).WithMessage("Lütfen 3 karakterden fazla veri girişi yapın");
            RuleFor(x => x.Plot).NotEmpty().WithMessage("Film içeriğini boş geçemezsiniz.");
            RuleFor(x => x.Genre).NotEmpty().WithMessage("Film türünü boş geçemezsiniz.");
            RuleFor(x => x.Released).NotEmpty().WithMessage("Film yayınlandığı tarihi boş geçemezsiniz.");
        }
    }
}
