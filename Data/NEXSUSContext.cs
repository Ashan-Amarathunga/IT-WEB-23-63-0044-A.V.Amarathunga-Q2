using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using NEXSUS.Model;

namespace NEXSUS.Data
{
    public class NEXSUSContext : DbContext
    {
        public NEXSUSContext (DbContextOptions<NEXSUSContext> options)
            : base(options)
        {
        }

        public DbSet<NEXSUS.Model.Student> Student { get; set; } = default!;
        public DbSet<NEXSUS.Model.Course> Course { get; set; } = default!;
    }
}
