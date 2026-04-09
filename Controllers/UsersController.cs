using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BACKEND_CHALLENGES_API.Models;

namespace BACKEND_CHALLENGES_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly CourseManagementContext _context;

        public UsersController(CourseManagementContext context)
        {
            _context = context;
        }

        // API lấy danh sách toàn bộ User để kiểm tra Database
        [HttpGet]
        public async Task<ActionResult<IEnumerable<User>>> GetUsers()
        {
            return await _context.Users.ToListAsync();
        }
    }
}