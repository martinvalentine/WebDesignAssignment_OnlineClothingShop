using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbCategory
    {
        public TbCategory()
        {
            TbProducts = new HashSet<TbProduct>();
        }

        public int CatId { get; set; }
        public string? CatName { get; set; }
        public string? Description { get; set; }
        public int? ParentId { get; set; }
        public int? Levels { get; set; }
        public int? Ordering { get; set; }
        public bool? Published { get; set; }
        public string? Thumb { get; set; }
        public string? Title { get; set; }
        public string? Cover { get; set; }

        public virtual ICollection<TbProduct> TbProducts { get; set; }
    }
}
