using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.Application.UseCases.Commands.Genres;
using Zenith_API.Application.UseCases.Queries;
using Zenith_API.Application.UseCases.Queries.Artists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ArtistsController : ControllerBase
    {

        private ZenithContext _context;
        private UseCaseHandler _handler;

        public ArtistsController(ZenithContext context, UseCaseHandler handler)
        {
            _context = context;
            _handler = handler;
        }

        // GET: api/<ArtistsController>
        [HttpGet]
        public IActionResult Get([FromQuery] ArtistSearch search,
                                [FromServices] IGetArtistsQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }

        // POST api/<ArtistsController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] ArtistInsertUpdateDTO dto,
                                   [FromServices] ICreateArtistCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<ArtistsController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] ArtistInsertUpdateDTO dto,
                                         [FromServices] IUpdateArtistCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<ArtistsController>/5
        [Authorize]
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteArtistCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
