using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Microsoft.Data.Entity;
using SalesAssister.Models;
using Microsoft.AspNet.Mvc.Rendering;

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

        public IActionResult Create()
        {
           ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

            ViewBag.ClientId = new SelectList(db.Clients, "ClientId", "Name");

            return View();
        }

        [HttpPost]
        public IActionResult Create(Contact contact)
        {
            db.Contacts.Add(contact);
            db.SaveChanges();

            return RedirectToAction("Index", "SalesPersons");
        }

        public IActionResult Edit(int id)
        {
            var thisContact = db.Contacts.FirstOrDefault(contacts => contacts.ContactId == id);

            ViewBag.SalesPersonId = new SelectList(db.SalesPersons, "SalesPersonId", "Name");

            ViewBag.ClientId = new SelectList(db.Clients, "ClientId", "Name");

            return View(thisContact);
        }

        [HttpPost]
        public IActionResult Edit(Contact contact)
        {
            db.Entry(contact).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Index", "SalesPersons");
        }

    }
}
