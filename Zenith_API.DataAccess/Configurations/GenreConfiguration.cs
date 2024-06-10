using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess.Configurations
{
    internal class GenreConfiguration : NamedEntityConfiguration<Genre>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<Genre> builder)
        {
            base.ConfigureEntity(builder);
        }
    }
}
