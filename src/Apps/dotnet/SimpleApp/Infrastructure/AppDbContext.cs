using Microsoft.EntityFrameworkCore;
using SimpleApp.Models;

namespace SimpleApp.Infrastructure;

public class AppDbContext : DbContext
{
    public DbSet<Person>? Persons { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseOracle(@"User Id=<username>;Password=<password>;Data Source=<net source name>");
    }
}