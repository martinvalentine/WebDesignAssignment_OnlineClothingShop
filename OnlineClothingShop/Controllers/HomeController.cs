using Microsoft.AspNetCore.Mvc;
using OnlineClothingShop.Models;
using System.Diagnostics;

namespace OnlineClothingShop.Controllers
{
    public class HomeController : Controller
    {

        private OnlineClothingShopContext db;

		public HomeController(OnlineClothingShopContext db)
		{
			this.db = db;
		}

		public IActionResult Index()
        {
            var product = db.TbProducts.ToList();
            return View(product);
        }
            
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}