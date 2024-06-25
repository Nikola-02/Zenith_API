using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.DataAccess;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminTracksController : ControllerBase
    {
        public ZenithContext Context { get; }
        public IMapper Mapper { get; }
        public AdminTracksController(IMapper mapper, ZenithContext context)
        {
            Context = context;
            Mapper = mapper;
        }
        // GET: api/<AdminTracksController>
        [HttpGet]
        public IActionResult Get()
        {
            var tracks = Context.Tracks.Where(x=>x.IsActive && x.DeletedAt == null);

            return Ok(Mapper.Map<List<TrackDTO>>(tracks.ToList()));
        }

        // GET api/<AdminTracksController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AdminTracksController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AdminTracksController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdminTracksController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
