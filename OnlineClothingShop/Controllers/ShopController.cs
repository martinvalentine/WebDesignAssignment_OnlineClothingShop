using Microsoft.AspNetCore.Mvc;
using OnlineClothingShop.Models;


namespace OnlineClothingShop.Controllers
{
	public class ShopController : Controller
	{
		private OnlineClothingShopContext db;


		public ShopController(OnlineClothingShopContext context)
		{
			db = context;
		}

		public IActionResult Shop()
		{
			var product = db.TbProducts.ToList();
			return View(product);
		}
		public IActionResult Detail(int? id)
		{
			var product = db.TbProducts.Where(p => p.ProductId == id).FirstOrDefault();
			return View(product);
		}
		
	}
}
