using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO;
using Zenith_API.Application.UseCases.Commands.FileTypes;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FileTypesController : ControllerBase
    {
        private UseCaseHandler _handler;

        public FileTypesController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<FileTypesController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // POST api/<FileTypesController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] LookupTablesInsertUpdateDTO dto,
                                   [FromServices] ICreateFileTypeCommand command)
        {
            _handler.HandleCommand(command,dto);
            return StatusCode(201);
        }

        // PUT api/<FileTypesController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] LookupTablesInsertUpdateDTO dto,
                                         [FromServices] IUpdateFileTypeCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command,dto);
            return NoContent();
        }

        // DELETE api/<FileTypesController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteFileTypeCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
