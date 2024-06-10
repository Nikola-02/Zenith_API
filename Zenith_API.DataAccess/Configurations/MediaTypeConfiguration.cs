using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess.Configurations
{
    internal class MediaTypeConfiguration : NamedEntityConfiguration<MediaType>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<MediaType> builder)
        {

        }
    }
}
