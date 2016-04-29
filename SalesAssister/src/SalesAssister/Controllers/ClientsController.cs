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
using System.Security.Claims;

namespace SalesAssister.Controllers
{
    public class ClientsController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;
        private IHostingEnvironment _env;

        public ClientsController(UserManager<ApplicationUser> userManager, ApplicationDbContext db, IHostingEnvironment env)
        {
            _userManager = userManager;
            _db = db;
            _env = env;
        }

        public async Task<IActionResult> Index()
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            var theView = _db.Clients
                .Where(x => x.User.Id == currentUser.Id);

            return View(theView);
        }

        [HttpPost]
        public async Task<IActionResult> newClient(Client Client)
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            Client.User = currentUser;

            _db.Clients.Add(Client);
            _db.SaveChanges();

            return RedirectToAction("Index", "Clients");
        }

        public IActionResult Delete(int id)
        {
            var thisProject = _db.Clients.FirstOrDefault(q => q.ClientId == id);
            return View(thisProject);
        }

        [HttpPost, ActionName("Delete")]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var thisProject = await _db.Clients.FirstOrDefaultAsync(q => q.ClientId == id);
            _db.Clients.Remove(thisProject);
            _db.SaveChanges();
            return RedirectToAction("Index");
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
