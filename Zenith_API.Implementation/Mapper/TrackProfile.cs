using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Domain;

namespace Zenith_API.Implementation.Mapper
{
    public class TrackProfile : Profile
    {
        public TrackProfile()
        {
            CreateMap<Track, TrackDTO>()
            .ForMember(dest => dest.Image, opt => opt.MapFrom(src => src.Files.FirstOrDefault(f=>f.FileType.Name == "image" && f.IsActive && f.DeletedAt == null).FileName))
            .ForMember(dest => dest.Audio, opt => opt.MapFrom(src => src.Files.FirstOrDefault(f=>f.FileType.Name == "audio" && f.IsActive && f.DeletedAt == null).FileName))
            .ForMember(dest => dest.Album, opt => opt.MapFrom(src => src.Album))
            .ForMember(dest => dest.Artist, opt => opt.MapFrom(src => src.Artist))
            .ForMember(dest => dest.Genre, opt => opt.MapFrom(src => src.Genre))
            .ForMember(dest => dest.MediaType, opt => opt.MapFrom(src => src.MediaType))
            .ForMember(dest => dest.Price, opt => opt.MapFrom(src => src.Prices.FirstOrDefault(p=>p.IsActive && p.DeletedAt == null).Amount))
            .ForMember(dest => dest.LikesCount, opt => opt.MapFrom(src => src.Likes.Count()));
        }
    }
}
