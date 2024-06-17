using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.FileTypes;
using Zenith_API.Application.DTO.Users;
using Zenith_API.Application.UseCases.Commands.FileTypes;
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
        public IActionResult Post([FromBody] UserInsertUpdateDTO dto, [FromServices] IRegisterUserCommand command)
        {
            _handler.HandleCommand(command,dto);
            return StatusCode(201);
        }

        // PUT api/<UsersController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] UserInsertUpdateDTO dto,
                                         [FromServices] IUpdateUserCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<UsersController>/5
        [Authorize]
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteFileTypeCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
