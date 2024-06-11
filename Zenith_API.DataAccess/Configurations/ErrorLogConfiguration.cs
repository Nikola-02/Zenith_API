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
    internal class ErrorLogConfiguration : IEntityTypeConfiguration<ErrorLog>
    {
        public void Configure(EntityTypeBuilder<ErrorLog> builder)
        {
            builder.Property(x => x.Message).IsRequired();
            builder.Property(x => x.StrackTrace).IsRequired();

            builder.HasKey(x => x.ErrorId);
        }
    }
}
