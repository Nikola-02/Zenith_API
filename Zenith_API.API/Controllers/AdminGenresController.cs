using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Genres;
using Zenith_API.Application.DTO.Users;
using Zenith_API.DataAccess;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminGenresController : ControllerBase
    {
        public ZenithContext Context { get; }
        public IMapper Mapper { get; }
        public AdminGenresController(IMapper mapper, ZenithContext context)
        {
            Context = context;
            Mapper = mapper;
        }
        // GET: api/<AdminGenresController>
        [HttpGet]
        public IActionResult Get()
        {
            var genres = Context.Genres.Where(x => x.IsActive && x.DeletedAt == null);

            return Ok(Mapper.Map<List<GenreDTO>>(genres.ToList()));
        }

        // GET api/<AdminGenresController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AdminGenresController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AdminGenresController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdminGenresController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
