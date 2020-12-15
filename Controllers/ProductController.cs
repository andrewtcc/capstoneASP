using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using capstoneASP.Models;
using MySqlConnector;

namespace capstoneASP.Controllers
{
    public class ProductController : Controller
    {
        private MySqlConnection mySqlConnection { get; set; }
        private readonly ILogger<ProductController> _logger;

        public ProductController(ILogger<ProductController> logger,MySqlConnection mySqlConnection)
        {
            _logger = logger;
            this.mySqlConnection = mySqlConnection;
        }

        public async Task<IActionResult>  Index()
        {
            return View(await this.GetProducts());
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        private async Task<List<ProductModel>> GetProducts()
        {
            var ret = new List<capstoneASP.Models.ProductModel>();

            this.mySqlConnection.Open();
            var cmd = this.mySqlConnection.CreateCommand() as MySqlCommand;
            cmd.CommandText = @"SELECT product_id, name, short_desc, description,unit_price,image_filename,category,quantity_in_stock, origin, version,obsolete,weight FROM products";

            using (var reader = await cmd.ExecuteReaderAsync())
                while (await reader.ReadAsync())
                {
                    var t = new ProductModel()
                    {
                        product_id = reader.GetFieldValue<int>(0),
                        name = reader.GetFieldValue<string>(1),
                        short_desc = reader.GetFieldValue<string>(2),
                        description = reader.GetFieldValue<string>(3),
                        unit_price = reader.GetFieldValue<float>(4),
                        image_filename = reader.GetFieldValue<string>(5),
                        category = reader.GetFieldValue<string>(6),
                        quantity_in_stock = reader.GetFieldValue<int>(7),
                        origin = reader.GetFieldValue<string>(8),
                        version = reader.GetFieldValue<string>(9),
                        obsolete = reader.GetFieldValue<bool>(10),
                        weight = reader.GetFieldValue<float>(11),

                    };
                    ret.Add(t);
                }
            this.mySqlConnection.Close();
            return ret;
        }
    }
}
