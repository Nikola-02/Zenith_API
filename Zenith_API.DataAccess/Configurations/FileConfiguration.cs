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
    internal class FileConfiguration : EntityConfiguration<Domain.File>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<Domain.File> builder)
        {
            builder.Property(x => x.FileName)
                .IsRequired()
                .HasMaxLength(50);

            builder.HasIndex(x => x.FileName)
                .IsUnique();

            builder.HasOne(x => x.FileType)
                .WithMany(x => x.Files)
                .HasForeignKey(x => x.FileTypeId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
