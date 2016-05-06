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
    public class ContactsController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;
        private IHostingEnvironment _env;

        public ContactsController(UserManager<ApplicationUser> userManager, ApplicationDbContext db, IHostingEnvironment env)
        {
            _userManager = userManager;
            _db = db;
            _env = env;
        }

        public async Task<IActionResult> Index(int id)
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            var theView = await _db.Clients
                .FirstOrDefaultAsync(x => x.ClientId == id);

            ViewBag.Contacts = _db.Contacts
                .Where(x => x.ClientId == id)
                .ToList();

            return View(theView);
        }

        public IActionResult Create(int id)
        {
            var thisProject = _db.Clients.FirstOrDefault(q => q.ClientId == id);

            ViewBag.Contacts = _db.Contacts
               .Where(x => x.ClientId == id);
              
            return View(thisProject);
        }

        [HttpPost]
        public async Task<IActionResult> addNotes(Contact Contact)
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            Contact.User = currentUser;

            _db.Contacts.Add(Contact);
            _db.SaveChanges();

            return RedirectToAction("Index", "Contacts", new { id = Contact.ClientId });
        }

        //Not using this right now
        //public IActionResult Delete(int id)
        //{
        //    var thisProject = _db.Contacts.FirstOrDefault(x => x.ContactId == id);

        //    return View(thisProject);
        //}

        //Not using this right now
        //[HttpPost]
        //public IActionResult DeleteThis(string Notes)
        //{
        //    var thisProject = _db.Contacts
        //        .Where(q => q.Notes.Equals(Notes, StringComparison.CurrentCultureIgnoreCase))
        //        .FirstOrDefault();

        //    _db.Contacts.Remove(thisProject);

        //    _db.SaveChanges();

        //    return RedirectToAction("Index");
        //}

        //Not using this right now
        //[HttpPost, ActionName("Delete")]
        //public async Task<IActionResult> DeleteConfirmed(Contact Contact)
        //{
        //    var thisProject = await _db.Contacts.FirstOrDefaultAsync(q => q.ContactId == Contact.ContactId);

        //    _db.Contacts.Remove(thisProject);

        //    _db.SaveChanges();
      
        //    return RedirectToAction("Index", "Conacts", new { id = Contact.ContactId });
        //}

        public IActionResult Edit(int id)
        {
            var thisProject = _db.Contacts.FirstOrDefault(q => q.ContactId == id);

            return View(thisProject);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Contact Contact)
        {
            var currentUser = await _userManager.FindByIdAsync(User.GetUserId());

            Contact.User = currentUser;

            _db.Entry(Contact).State = EntityState.Modified;

            _db.SaveChanges();

            return RedirectToAction("Index", "Contacts", new { id = Contact.ClientId });

        }
    }
}
