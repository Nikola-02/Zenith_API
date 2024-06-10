﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess
{
    public class ZenithContext : DbContext
    {
        public DbSet<Genre> Genres { get; set; }

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
