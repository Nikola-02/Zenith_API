using Microsoft.AspNetCore.Mvc;
using System.Reflection.Metadata;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.UseCases.Commands.Tracks;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TracksController : ControllerBase
    {
        private UseCaseHandler _handler;

        public TracksController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<TracksController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<TracksController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<TracksController>
        [HttpPost]
        public IActionResult Post([FromBody] TrackInsertDTO dto,
                                  [FromServices] ICreateTrackCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<TracksController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<TracksController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
