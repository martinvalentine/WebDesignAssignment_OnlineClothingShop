using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbAccount
    {
        public int AccountId { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public string? Password { get; set; }
        public string? Salt { get; set; }
        public bool? Active { get; set; }
        public string? FullName { get; set; }
        public int? RoleId { get; set; }
        public DateTime? LastLogin { get; set; }
        public DateTime? CreatedDate { get; set; }

        public virtual TbRole? Role { get; set; }
    }
}
