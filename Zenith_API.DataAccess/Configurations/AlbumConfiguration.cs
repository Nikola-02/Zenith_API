﻿using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Domain;

namespace Zenith_API.DataAccess.Configurations
{
    internal class AlbumConfiguration : NamedEntityConfiguration<Album>
    {
        protected override void ConfigureEntity(EntityTypeBuilder<Album> builder)
        {

        }
    }
}
