using Dapper;
using Dapper.Contrib.Extensions;
using DapperPracticeGroceryStore;
using MySql.Data.MySqlClient;

var db = new MySqlConnection("Server=127.0.0.1;Database=grocerystore;Uid=root;Pwd=abc123");

List<Category> cats = db.GetAll<Category>().ToList();
foreach (Category cat in cats)
{
    Console.WriteLine(cat);
}

Console.WriteLine();

List<Product> products = db.GetAll<Product>().ToList();
foreach (Product product in products)
{
    Console.WriteLine(product);
}