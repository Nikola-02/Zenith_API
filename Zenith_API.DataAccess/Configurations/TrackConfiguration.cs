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
    internal class TrackConfiguration : EntityConfiguration<Track>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<Track> builder)
        {
            builder.Property(x=>x.Name)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(x => x.Duration)
                .IsRequired();

            builder.HasIndex(x => x.Name)
                .IsUnique();

            builder.HasOne(x => x.Album)
                .WithMany(x => x.Tracks)
                .HasForeignKey(x => x.AlbumId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasOne(x => x.Artist)
                .WithMany(x => x.Tracks)
                .HasForeignKey(x => x.ArtistId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasOne(x => x.Genre)
                .WithMany(x => x.Tracks)
                .HasForeignKey(x => x.GenreId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasOne(x => x.MediaType)
                .WithMany(x => x.Tracks)
                .HasForeignKey(x => x.MediaTypeId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasMany(x => x.Files)
                .WithMany(x => x.Tracks)
                .UsingEntity<TrackFile>();
        }
    }
}
