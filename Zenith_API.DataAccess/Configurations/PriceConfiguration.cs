using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess.Configurations
{
    internal class PriceConfiguration : EntityConfiguration<Price>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<Price> builder)
        {
            builder.Property(x => x.Amount)
                .IsRequired()
                .HasPrecision(10, 2);

            builder.HasOne(x => x.Track)
                .WithMany(x => x.Prices)
                .HasForeignKey(x => x.TrackId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
