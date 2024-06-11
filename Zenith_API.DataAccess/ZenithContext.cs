using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess
{
    public class ZenithContext : DbContext
    {
        public DbSet<Genre> Genres { get; set; }
        public DbSet<MediaType> MediaTypes { get; set; }
        public DbSet<Artist> Artists { get; set; }
        public DbSet<Album> Albums { get; set; }
        public DbSet<Track> Tracks { get; set; }
        public DbSet<Price> Prices { get; set; }
        public DbSet<FileType> FileTypes { get; set; }
        public DbSet<Domain.File> Files { get; set; }
        public DbSet<TrackFile> TrackFiles { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Like> Likes { get; set; }

        private readonly string _connectionString;

        public ZenithContext(string connectionString)
        {
            this._connectionString = connectionString;
        }

        public ZenithContext()
        {
            this._connectionString = "Data Source=DESKTOP-CG6HMPT\\SQLEXPRESS;Initial Catalog=Zenith;TrustServerCertificate=true;Integrated security = true;";
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(_connectionString).UseLazyLoadingProxies();

            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(this.GetType().Assembly);

            modelBuilder.Entity<TrackFile>().HasKey(x => new
            {
                x.TrackId,
                x.FileId
            });

            modelBuilder.Entity<Like>().HasKey(x => new
            {
                x.UserId,
                x.TrackId
            });

            base.OnModelCreating(modelBuilder);
        }

        public override int SaveChanges()
        {
            IEnumerable<EntityEntry> entries = this.ChangeTracker.Entries();

            foreach (EntityEntry entry in entries)
            {
                if (entry.State == EntityState.Added)
                {
                    if (entry.Entity is Entity e)
                    {
                        e.IsActive = true;
                        e.CreatedAt = DateTime.UtcNow;
                    }
                }

                if (entry.State == EntityState.Modified)
                {
                    if (entry.Entity is Entity e)
                    {
                        e.UpdatedAt = DateTime.UtcNow;
                    }
                }
            }

            return base.SaveChanges();
        }
    }
}
