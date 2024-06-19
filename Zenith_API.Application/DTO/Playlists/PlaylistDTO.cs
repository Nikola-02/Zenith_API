﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.DTO.Users;

namespace Zenith_API.Application.DTO.Playlists
{
    public class PlaylistDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime CreatedAt { get; set; }
        public UserDTO User { get; set; }
        public ICollection<TrackDTO> Tracks { get; set; }
    }
}
