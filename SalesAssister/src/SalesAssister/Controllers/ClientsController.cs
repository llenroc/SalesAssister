using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.Data.Entity;
using SalesAssister.Models;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.AspNet.Hosting;

namespace SalesAssister.Controllers
{
    public class ClientsController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManger;
        private IHostingEnvironment _env;

        public ClientsController(UserManager<ApplicationUser> userManager, ApplicationDbContext db, IHostingEnvironment env)
        {
            _userManger = userManager;
            _db = db;
            _env = env;
        }

        public IActionResult Index()
        {
            return View();
        }

        //public IActionResult Index(int id)
        //{
        //    var clients = _db.Clients.Where(x => x.SalesPersonId == id).Include(x => x.salesperson).ToList();

        //    if(clients.Count >= 1)
        //    {
        //        return View(clients);
        //    }
        //    else
        //    {
        //        return View();
        //    } 
        //}

        //public IActionResult Create()
        //{
        //    ViewBag.SalesPersonId = new SelectList(_db.SalesPersons, "SalesPersonId", "Name");

        //    return View();
        //}

        //[HttpPost]
        //public IActionResult Create(Client client)
        //{
        //    db.Clients.Add(client);
        //    db.SaveChanges();
        //    return RedirectToAction("Index", "SalesPersons");
        //}

        //public IActionResult Edit(int id)
        //{
        //    var thisClient = db.Clients.FirstOrDefault(clients => clients.ClientId == id);

        //    ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

        //    return View(thisClient);
        //}

        //[HttpPost]
        //public IActionResult Edit(Client client)
        //{
        //    db.Entry(client).State = EntityState.Modified;
        //    db.SaveChanges();
        //    return RedirectToAction("Index", "SalesPersons");
        //}

        //public IActionResult Delete(int id)
        //{
        //    var thisItem = db.Clients.FirstOrDefault(client => client.ClientId == id);

        //    return View(thisItem);
        //}

        //[HttpPost, ActionName ("Delete")]
        //public IActionResult DeleteConfirmed(int id)
        //{
        //    var thisItem = db.Clients.FirstOrDefault(client => client.ClientId == id);

        //    db.Clients.Remove(thisItem);
        //    db.SaveChanges();
        //    return RedirectToAction("Index", "SalesPersons");
        //}
    }
}
