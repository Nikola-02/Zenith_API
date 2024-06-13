﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;

namespace Zenith_API.Application.UseCases.Commands.Tracks
{
    public interface ICreateTrackCommand : ICommand<TrackInsertDTO>
    {
    }
}
