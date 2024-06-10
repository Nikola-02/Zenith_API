using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.DataAccess.Configurations;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess
{
    internal class NamedEntityConfiguration<T> : EntityConfiguration<T>
        where T : NamedEntity
    {
        protected override void ConfigureEntity(EntityTypeBuilder<T> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Name)
                   .IsRequired()
                   .HasMaxLength(70);

            builder.HasIndex(x => x.Name)
                   .IsUnique();
        }
    }
}
