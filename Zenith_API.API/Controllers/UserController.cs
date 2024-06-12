using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private UseCaseHandler _handler;

        public UserController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<UserController>
        [HttpGet]
        public IActionResult Get()
        {
            return Ok();
        }

        // GET api/<UserController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<UserController>
        [HttpPost]
        public IActionResult Post([FromBody] RegisterUserDTO dto, [FromServices] IRegisterUserCommand command)
        {
            _handler.HandleCommand(command,dto);
            return Created();
        }

        // PUT api/<UserController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
