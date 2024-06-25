using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Tracks;
using Zenith_API.Application.DTO.Users;
using Zenith_API.DataAccess;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminUsersController : ControllerBase
    {
        public ZenithContext Context { get; }
        public IMapper Mapper { get; }
        public AdminUsersController(IMapper mapper, ZenithContext context)
        {
            Context = context;
            Mapper = mapper;
        }
        // GET: api/<AdminUsersController>
        [HttpGet]
        public IActionResult Get()
        {
            var users = Context.Users.Where(x => x.IsActive && x.DeletedAt == null);

            return Ok(Mapper.Map<List<UserDTO>>(users.ToList()));
        }

        // GET api/<AdminUsersController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AdminUsersController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AdminUsersController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdminUsersController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
