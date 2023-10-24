using Microsoft.AspNetCore.Mvc;

namespace OnlineClothingShop.Controllers
{
	public class ShopController : Controller
	{
		public IActionResult Shop()
		{
			return View();
		}
	}
}
