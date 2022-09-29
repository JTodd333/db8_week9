using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using Dapper;
using Dapper.Contrib.Extensions;
using BusniessPortalDemo.Models;


namespace BusniessPortalDemo.Controllers
{
    public class DepartmentController : Controller
    {
        public IActionResult Index()
        {
            // List all of the departments

            var db = new MySqlConnection("Server=127.0.0.1;Database=business;Uid=root;Pwd=abc123;");
            //var depts = db.GetAll<Department>();  (used this to get dept 
            // type and hover over to see type.

            //Using the below way instead of converting to a new list
            IEnumerable<Department> depts = db.GetAll<Department>();
            return View(depts);
        }

        // C(R)UD - View a single Department and its details
        public IActionResult Detail(string id)
        {
            // Started with Content(id) just for testing. I wanted to see
            //if this function is in fact receiving the department ID, and
            // to test it I'm just sending that ID back to the browser.
            //Test line to make sure returning string id passed in
            //return Content(id);

            //Connect to the database:
            var db = new MySqlConnection("Server=127.0.0.1;Database=business;Uid=root;Pwd=abc123;");
            //Read 1 row from the DB
            Department dep = db.Get<Department>(id);

            //New let's get a list of all people who work there
            List<Employee> emps = db.Query<Employee>($"select * from employee where department = '{id}'").ToList();
            ViewData["employees"] = emps;
            return View(dep);
        }

        // View that presents a form for adding a new department
        public IActionResult AddForm()
        {
            return View();
        }

        // (C)RUD - An action that responds to the form for adding a new department

        // CRU(D) - Delete a department
        public IActionResult Delete(string id)
        {
            var db = new MySqlConnection("Server=127.0.0.1;Database=business;Uid=root;Pwd=abc123;");

            //Have to create an instance because of Dapper.
            Department dep = new Department() { id = id };
            db.Delete<Department>(dep);
            //return Content("Deleted!"); (Test Line)
            return Redirect("/Department");
        }

        // CR(U)D - Edit a department
    }
}
