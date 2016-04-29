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
    public class ContactsController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManger;
        private IHostingEnvironment _env;

        public ContactsController(UserManager<ApplicationUser> userManager, ApplicationDbContext db, IHostingEnvironment env)
        {
            _userManger = userManager;
            _db = db;
            _env = env;
        }

        //public IActionResult Index(int id)
        //{
        //    var contactDetails = _db.Contacts
        //        .Where(x => x.ClientId == id)
        //        .Include(x => x.salesperson)
        //        .Include(x => x.client)
        //        .ToList();

        //    return View(contactDetails);
        //}

        //Crud stuff
        //public IActionResult Create()
        //{
        //   ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

        //    ViewBag.ClientId = new SelectList(db.Clients, "ClientId", "Name");

        //    return View();
        //}

        //[HttpPost]
        //public IActionResult Create(Contact contact)
        //{
        //    db.Contacts.Add(contact);
        //    db.SaveChanges();

        //    return RedirectToAction("Index", "SalesPersons");
        //}

        //public IActionResult Edit(int id)
        //{
        //    var thisContact = db.Contacts.FirstOrDefault(contacts => contacts.ContactId == id);

        //    ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

        //    ViewBag.ClientId = new SelectList(db.Clients, "ClientId", "Name");

        //    return View(thisContact);
        //}

        //[HttpPost]
        //public IActionResult Edit(Contact contact)
        //{
        //    db.Entry(contact).State = EntityState.Modified;
        //    db.SaveChanges();

        //    return RedirectToAction("Index", "SalesPersons");
        //}

        //public IActionResult Delete(int id)
        //{
        //    var thisItem = db.Contacts.FirstOrDefault(contact => contact.ContactId == id);

        //    return View(thisItem);
        //}

        //[HttpPost, ActionName("Delete")]
        //public IActionResult DeleteConfirmed(int id)
        //{
        //    var thisItem = db.Contacts.FirstOrDefault(contact => contact.ContactId == id);

        //    db.Contacts.Remove(thisItem);

        //    db.SaveChanges();
        //    return RedirectToAction("Index", "SalesPersons");
        //}

    }
}
