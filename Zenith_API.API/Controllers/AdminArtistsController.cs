using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Artists;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.DataAccess;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminArtistsController : ControllerBase
    {
        public ZenithContext Context { get; }
        public IMapper Mapper { get; }
        public AdminArtistsController(IMapper mapper, ZenithContext context)
        {
            Context = context;
            Mapper = mapper;
        }
        // GET: api/<AdminArtistsController>
        [HttpGet]
        public IActionResult Get()
        {
            var artistsQuery = Context.Artists.Where(x => x.IsActive && x.DeletedAt == null);

            return Ok(Mapper.Map<List<ArtistDTO>>(artistsQuery.ToList()));
        }

        // GET api/<AdminArtistsController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AdminArtistsController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AdminArtistsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdminArtistsController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
