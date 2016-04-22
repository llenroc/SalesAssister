using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using SalesAssister.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace SalesAssister.Controllers
{
    public class SalesPersonsController : Controller
    {
        private SalesAssisterDbContext db = new SalesAssisterDbContext();

        // GET: /<controller>/
        public IActionResult Index()
        {
            return View(db.SalesPersons.ToList());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(SalesPerson salesperson)
        {
            db.SalesPersons.Add(salesperson);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Edit(int id)
        {
            var salesPerson = db.SalesPersons.FirstOrDefault(salesperson => salesperson.SalesPersonId == id);
            return View(salesPerson);
        }

        [HttpPost]
        public IActionResult Edit(SalesPerson salesperson)
        {
            db.Entry(salesperson).State = Microsoft.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
