﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Artists;

namespace Zenith_API.Application.UseCases.Commands.Artists
{
    public interface IUpdateArtistCommand : ICommand<ArtistInsertUpdateDTO>
    {
    }
}
