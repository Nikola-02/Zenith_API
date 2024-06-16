using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.MediaTypes;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.Application.UseCases.Commands.MediaTypes;
using Zenith_API.Application.UseCases.Queries.Albums;
using Zenith_API.Application.UseCases.Queries.MediaTypes;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MediaTypesController : ControllerBase
    {
        private ZenithContext _context;
        private UseCaseHandler _handler;

        public MediaTypesController(ZenithContext context, UseCaseHandler handler)
        {
            _context = context;
            _handler = handler;
        }

        // GET: api/<MediaTypesController>
        [HttpGet]
        public IActionResult Get([FromQuery] MediaTypeSearch search,
                                [FromServices] IGetMediaTypesQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }

        // POST api/<MediaTypesController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromBody] MediaTypeInsertUpdateDTO dto,
                                   [FromServices] ICreateMediaTypeCommand command)
        {
            _handler.HandleCommand(command, dto);
            return StatusCode(201);
        }

        // PUT api/<MediaTypesController>/5
        [Authorize]
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] MediaTypeInsertUpdateDTO dto,
                                         [FromServices] IUpdateMediaTypeCommand command)
        {
            dto.Id = id;
            _handler.HandleCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<MediaTypesController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteMediaTypeCommand command)
        {
            _handler.HandleCommand(command, id);
            return NoContent();
        }
    }
}
