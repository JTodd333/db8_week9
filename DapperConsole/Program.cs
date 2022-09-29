using Dapper;
using Dapper.Contrib.Extensions;
using DapperConsole;
using MySql.Data.MySqlClient;


var db = new MySqlConnection("Server=127.0.0.1;Database=business;Uid=root;Pwd=abc123");
List<Employee> emps = db.GetAll<Employee>().ToList();

foreach (Employee emp in emps)
{
    Console.WriteLine(emp);
}

//Let's add a new employee
//Leave out the id. Let the database create that for us.


//Tip, run once then comment out, so you can run again without
//adding it twice.
//Employee e1 = new Employee()
//{
//    firstname = "Harry",
//    lastname = "Potter",
//    phone = "810-111-1111",
//    email = "hp@hp.com",
//    department = "HR"
//};
//db.Insert(e1);

//Let's delete the last extra added one
//db.Delete(new Employee(){ id = 29 });

Console.WriteLine("Let's just read a single one, by ID. We'll do id 5.");
Employee e2 = db.Get<Employee>(5); //5 is the ID
Console.WriteLine(e2);

//New let's change the spelling from Emily to Emilie.

//e2.firstname = "Emilie";
//db.Update<Employee>(e2);


Console.WriteLine();
Console.WriteLine("Let's get all employees who work in the It department");

List<Employee> emps2 = db.Query<Employee>("select * from employee where department = 'IT'").ToList();
foreach (Employee emp in emps2)
{
    Console.WriteLine(emp);
}

// New Table practice
Console.WriteLine();
Console.WriteLine("Part 2 practice, department table");
Console.WriteLine();

List<Department> depts = db.GetAll<Department>().ToList();
foreach (Department dept in depts)
{
    Console.WriteLine(dept);
}

Console.WriteLine();

Department d1 = db.Get<Department>("HR");
Console.WriteLine(d1);

Console.WriteLine();

//Adding new department
//Department d2 = new Department()
//{
//    id = "RES",
//    name = "Research",
//    location = "Port Huron"
//};
//db.Insert(d2);

//deleting that department
//db.Delete(new Department() { id = "RES" });

//Updating a location
//d1.location = "Port Huron";
//db.Update<Department>(d1);

foreach (Department dept in depts)
{
    Console.WriteLine(dept);
}