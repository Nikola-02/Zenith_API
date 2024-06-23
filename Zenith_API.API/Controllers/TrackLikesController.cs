using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.TrackLikes;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TrackLikesController : ControllerBase
    {
        private UseCaseHandler _handler;
        private ZenithContext _context;
        private IApplicationActor _actor;

        public TrackLikesController(UseCaseHandler handler, ZenithContext context, IApplicationActor actor)
        {
            _handler = handler;
            _context = context;
            _actor = actor;
        }

        // GET api/<TrackLikesController>/trackId
        [Authorize]
        [HttpGet("{trackId}")]
        public IActionResult Get(int trackId)
        {
            var like = _context.Likes.FirstOrDefault(x=>x.TrackId == trackId && x.UserId == _actor.Id);

            var isLiked = like != null;

            return Ok(new { exists = isLiked });
        }

        // POST api/<TrackLikesController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] TrackLikeDTO dto,
                                  [FromServices] ILikeTrackCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // DELETE api/<TrackLikesController>/5
        [Authorize]
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IUndoLikeTrackCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
