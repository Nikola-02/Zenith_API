using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.Users;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private UseCaseHandler _handler;

        public UsersController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // POST api/<UsersController>
        [HttpPost]
        public IActionResult Post([FromBody] RegisterUserDTO dto, [FromServices] IRegisterUserCommand command)
        {
            _handler.HandleCommand(command,dto);
            return StatusCode(201);
        }
    }
}
