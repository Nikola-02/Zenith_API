using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

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
        public IActionResult Get()
        {
            return Ok();
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
        public IActionResult Put(int id, [FromBody] PlaylistInsertUpdateDTO dto,
                                   [FromServices] IUpdatePlaylistCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<PlaylistsController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeletePlaylistCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }

        // POST api/<PlaylistsController>/5/track
        [HttpPost("{id}/track")]
        public IActionResult AddTrackToPlaylist(int id, [FromBody] AddTrackToPlaylistDTO dto,
                                                        [FromServices] IAddTrackToPlaylistCommand command)
        {
            dto.PlaylistId = id;
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }
    }
}
