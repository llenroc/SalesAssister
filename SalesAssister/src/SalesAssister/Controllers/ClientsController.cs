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
using Microsoft.AspNet.Authorization;

namespace SalesAssister.Controllers
{
    [Authorize]
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

        public IActionResult Create()
        {
            return View();
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

        public IActionResult Edit(int id)
        {
            var thisProject = _db.Clients.FirstOrDefault(q => q.ClientId == id);
            return View(thisProject);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Client Client)
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            Client.User = currentUser;

            _db.Entry(Client).State = EntityState.Modified;

            _db.SaveChanges();

            return RedirectToAction("Index", "Clients");

        }

        
    }
}
