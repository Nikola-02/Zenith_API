using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.Application.UseCases.Commands.Genres;
using Zenith_API.Application.UseCases.Queries.Genres;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GenresController : ControllerBase
    {
        private ZenithContext _context;
        private UseCaseHandler _handler;

        public GenresController(ZenithContext context, UseCaseHandler handler)
        {
            _context = context;
            _handler = handler;
        }

        // GET: api/<GenresController>
        [HttpGet]
        public IActionResult Get([FromQuery] GenresSearch search,
                                [FromServices] IGetGenresQuery query)
        {
            return Ok(_handler.HandleQuery(query,search));
        }

        // POST api/<GenresController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] GenreInsertUpdateDTO dto,
                                   [FromServices] ICreateGenreCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<GenresController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] GenreInsertUpdateDTO dto,
                                         [FromServices] IUpdateGenreCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<GenresController>/5
        [Authorize]
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteGenreCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
