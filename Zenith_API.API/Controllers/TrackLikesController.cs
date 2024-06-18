using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.TrackLikes;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.TrackLikes;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TrackLikesController : ControllerBase
    {
        private UseCaseHandler _handler;

        public TrackLikesController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // POST api/<TrackLikesController>
        [HttpPost]
        public IActionResult Post([FromBody] TrackLikeDTO dto,
                                  [FromServices] ILikeTrackCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // DELETE api/<TrackLikesController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IUndoLikeTrackCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
