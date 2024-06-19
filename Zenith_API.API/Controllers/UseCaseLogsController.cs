using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Albums;
using Zenith_API.Application.DTO.UseCaseLogs;
using Zenith_API.Application.UseCases.Queries.Albums;
using Zenith_API.Application.UseCases.Queries.UseCaseLogs;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UseCaseLogsController : ControllerBase
    {
        private UseCaseHandler _handler;

        public UseCaseLogsController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<UseCaseLogsController>
        [HttpGet]
        public IActionResult Get([FromQuery] UseCaseLogSearch search,
                                [FromServices] IGetUseCaseLogsQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }
    }
}
