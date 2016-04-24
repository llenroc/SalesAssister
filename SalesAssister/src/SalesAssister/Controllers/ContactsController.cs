using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using SalesAssister.Models;


namespace SalesAssister.Controllers
{
    public class ContactsController : Controller
    {
        private SalesAssisterDbContext db = new SalesAssisterDbContext();

        public IActionResult Index(int id)
        {
            var contactDetails = db.Contacts
                .Where(x => x.ClientId == id)
                .Include(x => x.salesperson)
                .Include(x => x.client)
                .ToList();

            return View(contactDetails);
        }
    }
}
