using Microsoft.AspNetCore.Mvc;
using Zenith_API.Application.DTO.Filters;
using Zenith_API.Application.UseCases.Queries.Filters;
using Zenith_API.Implementation;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FiltersController : ControllerBase
    {
        private UseCaseHandler _handler;

        public FiltersController(UseCaseHandler handler)
        {
            _handler = handler;
        }

        // GET: api/<FiltersController>
        [HttpGet]
        public IActionResult Get([FromQuery] FiltersSearch search,
                                 [FromServices] IGetFiltersQuery query)
        {
            return Ok(_handler.HandleQuery(query, search));
        }
    }
}
