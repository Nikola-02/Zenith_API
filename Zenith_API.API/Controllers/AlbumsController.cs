using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.Application.UseCases.Commands.Artists;
using Zenith_API.Application.UseCases.Queries.Albums;
using Zenith_API.Application.UseCases.Queries.Artists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AlbumsController : ControllerBase
    {
        private ZenithContext _context;
        private UseCaseHandler _handler;

        public AlbumsController(ZenithContext context, UseCaseHandler handler)
        {
            _context = context;
            _handler = handler;
        }

        // GET: api/<AlbumsController>
        [HttpGet]
        public IActionResult Get([FromQuery] AlbumSearch search,
                                [FromServices] IGetAlbumsQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }

        // POST api/<AlbumsController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] AlbumInsertUpdateDTO dto,
                                   [FromServices] ICreateAlbumCommand command)
        {
            _handler.HandleCommand(command,dto);
            return StatusCode(201);
        }

        // PUT api/<AlbumsController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] AlbumInsertUpdateDTO dto,
                                         [FromServices] IUpdateAlbumCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<AlbumsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
