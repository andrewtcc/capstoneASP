using System;

namespace capstoneASP.Models
{
    public class ProductModel
    {

        public int product_id { get;set;}

        public String name {get; set;}

        public string short_desc {get; set;}

        public string description {get; set;}
        public float unit_price {get; set;}
        public string image_filename {get; set;}
        public string category {get; set;}
        public int quantity_in_stock {get; set;}
        public string origin {get; set;}
        public string version {get; set;}
        public bool obsolete {get; set;}
        public float weight {get; set;}

    }
}