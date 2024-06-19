using Microsoft.AspNetCore.Mvc;
using System.Reflection.Metadata;
using Zenith_API.Application.DTO.AccessUseCase;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.UseCases.Commands.AccessUseCases;
using Zenith_API.Application.UseCases.Commands.Albums;
using Zenith_API.DataAccess;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccessUseCasesController : ControllerBase
    {
        private ZenithContext _context;
        private UseCaseHandler _handler;

        public AccessUseCasesController(ZenithContext context, UseCaseHandler handler)
        {
            _context = context;
            _handler = handler;
        }

        // POST api/<AccessUseCasesController>
        [HttpPost]
        public IActionResult Put(int id, [FromBody] AccessUseCaseDTO dto,
                                         [FromServices] IUpdateAccessUseCasesCommand command)
        {
            _handler.HandleCommand(command, dto);
            return NoContent();
        }
    }
}
