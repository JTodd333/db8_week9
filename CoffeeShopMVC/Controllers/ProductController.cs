using Microsoft.AspNetCore.Mvc;
using Dapper;
using Dapper.Contrib.Extensions;
using MySql.Data.MySqlClient;
using CoffeeShopMVC.Models;

namespace CoffeeShopMVC.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            var db = new MySqlConnection("Server=127.0.0.1;Database=coffeeshopprac;Uid=root;Pwd=abc123");
            IEnumerable<Product> prods = db.GetAll<Product>();
            return View(prods);
        }

        public IActionResult Detail(int id)
        {
            var db = new MySqlConnection("Server=127.0.0.1;Database=coffeeshopprac;Uid=root;Pwd=abc123");
            Product prod = db.Get<Product>(id);
            return View(prod);

            //return Content(id.ToString());
        }
    }
}
