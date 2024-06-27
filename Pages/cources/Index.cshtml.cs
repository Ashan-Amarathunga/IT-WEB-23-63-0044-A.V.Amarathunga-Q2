using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using NEXSUS.Data;
using NEXSUS.Model;

namespace NEXSUS.Pages.cources
{
    public class IndexModel : PageModel
    {
        private readonly NEXSUS.Data.NEXSUSContext _context;

        public IndexModel(NEXSUS.Data.NEXSUSContext context)
        {
            _context = context;
        }

        public IList<Course> Course { get;set; } = default!;

        public async Task OnGetAsync()
        {
            Course = await _context.Course.ToListAsync();
        }
    }
}
