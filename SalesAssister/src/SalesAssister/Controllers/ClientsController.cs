using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using SalesAssister.Models;
using Microsoft.Data.Entity;
using Microsoft.AspNet.Mvc.Rendering;

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
                return View();
            } 
        }

        public IActionResult Create()
        {
            ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

            return View();
        }

        [HttpPost]
        public IActionResult Create(Client client)
        {
            db.Clients.Add(client);
            db.SaveChanges();
            return RedirectToAction("Index", "SalesPersons");
        }
        
        public IActionResult Edit(int id)
        {
            var thisClient = db.Clients.FirstOrDefault(clients => clients.ClientId == id);

            ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

            return View(thisClient);
        }

        [HttpPost]
        public IActionResult Edit(Client client)
        {
            db.Entry(client).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index", "SalesPersons");
        }
    }
}
