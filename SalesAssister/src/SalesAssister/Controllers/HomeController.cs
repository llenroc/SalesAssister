using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using SalesAssister.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace SalesAssister.Controllers
{
    public class HomeController : Controller
    {
        // GET: /<controller>/
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Connect()
        {
            return View();
        }

        [HttpPost]
        public IActionResult MFAgo(Authenticate MFA )
        {
            MFA.Acceptto();

            return RedirectToAction("Index", "Home");
        }
    }
}
