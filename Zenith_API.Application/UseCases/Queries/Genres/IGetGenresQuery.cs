using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.Genres;

namespace Zenith_API.Application.UseCases.Queries.Genres
{
    public interface IGetGenresQuery : IQuery<PagedResponse<GenreDTO>, GenresSearch>
    {
    }
}
