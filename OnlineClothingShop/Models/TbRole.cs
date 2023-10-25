using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbRole
    {
        public TbRole()
        {
            TbAccounts = new HashSet<TbAccount>();
        }

        public int RoleId { get; set; }
        public string? RoleName { get; set; }
        public string? Description { get; set; }

        public virtual ICollection<TbAccount> TbAccounts { get; set; }
    }
}
