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
        public string? Thumb { get; set; }

        public virtual ICollection<TbProduct> TbProducts { get; set; }
    }
}
