using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbLocation
    {
        public TbLocation()
        {
            TbCustomers = new HashSet<TbCustomer>();
        }

        public int LocationId { get; set; }
        public string? Name { get; set; }
        public string? Type { get; set; }
        public string? Slug { get; set; }
        public string? NameWithType { get; set; }
        public string? PathWithType { get; set; }
        public int? ParentCode { get; set; }
        public int? Levels { get; set; }

        public virtual ICollection<TbCustomer> TbCustomers { get; set; }
    }
}
