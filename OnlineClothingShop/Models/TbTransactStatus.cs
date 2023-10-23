using System;
using System.Collections.Generic;

namespace OnlineClothingShop.Models
{
    public partial class TbTransactStatus
    {
        public TbTransactStatus()
        {
            TbOrders = new HashSet<TbOrder>();
        }

        public int TransactStatusId { get; set; }
        public string? Status { get; set; }
        public string? Description { get; set; }

        public virtual ICollection<TbOrder> TbOrders { get; set; }
    }
}
