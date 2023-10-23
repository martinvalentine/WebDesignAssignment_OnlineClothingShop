using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbAttributesPrice
    {
        public int AttributesPriceId { get; set; }
        public int? AttributeId { get; set; }
        public int? ProductId { get; set; }
        public int? Price { get; set; }
        public bool? Active { get; set; }

        public virtual TbAttribute? Attribute { get; set; }
        public virtual TbProduct? Product { get; set; }
    }
}
