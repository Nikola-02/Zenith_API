using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.Playlists;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.Application.UseCases.Commands.Playlists;
using Zenith_API.Application.UseCases.Queries.Playlists;
using Zenith_API.Application.UseCases.Queries.Tracks;
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

        //Vracanje svih plejlista za "administratora"
        // GET: api/<PlaylistsController>
        [HttpGet]
        public IActionResult Get([FromQuery] PlaylistSearch search,
                                [FromServices] IGetPlaylistsQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }

        // GET api/<PlaylistsController>/
        [Authorize]
        [HttpGet("mine")]
        public IActionResult Get([FromQuery] PlaylistSearch search, 
                                 [FromServices] IGetPlaylistForUserQuery query)
        {
            return Ok(_handler.HandleQuery(query,search));
        }

        // POST api/<PlaylistsController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] PlaylistInsertUpdateDTO dto,
                                   [FromServices] ICreatePlaylistCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<PlaylistsController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] PlaylistInsertUpdateDTO dto,
                                   [FromServices] IUpdatePlaylistCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<PlaylistsController>/5
        [Authorize]
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeletePlaylistCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }

        //Dodavanje track u plejlistu
        // POST api/<PlaylistsController>/5/track
        [Authorize]
        [HttpPost("{id}/track")]
        public IActionResult AddTrackToPlaylist(int id, [FromBody] TrackToPlaylistDTO dto,
                                                        [FromServices] IAddTrackToPlaylistCommand command)
        {
            dto.PlaylistId = id;
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        //Brisanje track iz plejliste
        // DELETE api/<PlaylistsController>/5/track
        [Authorize]
        [HttpDelete("{id}/track")]
        public IActionResult RemoveTrackToPlaylist(int id, [FromBody] TrackToPlaylistDTO dto,
                                                        [FromServices] IRemoveTrackFromPlaylistCommand command)
        {
            dto.PlaylistId = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }
    }
}
