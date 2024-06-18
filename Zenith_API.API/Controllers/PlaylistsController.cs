using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlaylistsController : ControllerBase
    {
        private UseCaseHandler _handler;

        public PlaylistsController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<PlaylistsController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<PlaylistsController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<PlaylistsController>
        [HttpPost]
        public IActionResult Post([FromBody] PlaylistInsertUpdateDTO dto,
                                   [FromServices] ICreatePlaylistCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<PlaylistsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<PlaylistsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
