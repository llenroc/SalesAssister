using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using SalesAssister.Models;
using Microsoft.Data.Entity;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace SalesAssister.Controllers
{
    public class ClientsController : Controller
    {
        private SalesAssisterDbContext db = new SalesAssisterDbContext();

        public IActionResult Index(int id)
        {
            var clients = db.Clients.Where(x => x.SalesPersonId == id).Include(x => x.salesperson).ToList();

            if(clients.Count >= 1)
            {
                return View(clients);
            }
            else
            {
                return View(db.SalesPersons.ToList());
            } 
        }
    }
}
