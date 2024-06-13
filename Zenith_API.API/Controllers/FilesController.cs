using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Zenith_API.API.DTO;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Zenith_API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FilesController : ControllerBase
    {
        private static IEnumerable<string> allowedExtensions = new List<string>
        {
            ".jpg", ".jpeg", ".png", ".mp3", ".wav"
        };

        // GET api/<FilesController>/fileName
        [Authorize]
        [HttpGet("{fileName}")]
        public IActionResult Get(string fileName)
        {
            var path = Path.Combine("wwwroot", "temp", fileName);

            return Ok(new { exists = Path.Exists(path) });
        }

        // POST api/<FilesController>
        [Authorize]
        [HttpPost]
        public IActionResult Post([FromForm] FileUploadDTO dto)
        {
            var extension = Path.GetExtension(dto.File.FileName);

            if (!allowedExtensions.Contains(extension))
            {
                return new UnsupportedMediaTypeResult();
            }

            var fileName = Guid.NewGuid().ToString() + extension;

            var savePath = Path.Combine("wwwroot", "temp", fileName);

            using var fs = new FileStream(savePath, FileMode.Create);

            dto.File.CopyTo(fs);

            return StatusCode(201, new { file = fileName });
        }
    }
}
