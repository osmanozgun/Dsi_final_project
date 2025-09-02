﻿using Business.Concrete;
using DataAccess.Concrete.InMemory;
using System;
using System.Net.Http.Headers;

namespace ConsoleUI
{
    internal class Program
    {
        static void Main(string[] args)
        {

            ProductManager productManager = new ProductManager(new InMemoryProductDal());
            foreach (var product in productManager.GetAll())
            {
                Console.WriteLine(product.ProductName);
            }
        }
    }
}
