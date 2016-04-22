using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.Entity;

namespace SalesAssister.Models
{
    public class SalesAssisterDbContext : DbContext
    {
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<SalesPerson> SalesPersons { get; set; }
        public DbSet<Client> Clients { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=SalesAssister;integrated security = true");
        }
    }
}
