﻿using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbProduct
    {
        public TbProduct()
        {
            TbAttributesPrices = new HashSet<TbAttributesPrice>();
            TbOrderDetails = new HashSet<TbOrderDetail>();
        }

        public int ProductId { get; set; }
        public string? ProductName { get; set; }
        public string? ShortDesc { get; set; }
        public string? Description { get; set; }
        public int? CatId { get; set; }
        public int? Price { get; set; }
        public int? Discount { get; set; }
        public string? Thumb { get; set; }
        public DateTime? DateCreated { get; set; }
        public DateTime? DateModified { get; set; }
        public bool? BestSellers { get; set; }
        public bool? HomeFlag { get; set; }
        public bool? Active { get; set; }
        public int? UnitsInStock { get; set; }

        public virtual TbCategory? Cat { get; set; }
        public virtual ICollection<TbAttributesPrice> TbAttributesPrices { get; set; }
        public virtual ICollection<TbOrderDetail> TbOrderDetails { get; set; }
    }
}
