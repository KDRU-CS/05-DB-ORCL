using SimpleApp.Infrastructure;
using SimpleApp.Models;

using (var db = new AppDbContext())
{
    var person = new Person { FirstName = "Naveed Ahmad", LastName = "Hematmal", Email = "Hematmal2022@gmail.com" };

    db.Persons!.Add(person);
    db.SaveChanges();
}

Console.ReadLine();