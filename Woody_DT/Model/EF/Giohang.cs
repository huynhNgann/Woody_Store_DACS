namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Giohang")]
    public partial class Giohang
    {
        public int ID { get; set; }

        public DateTime? Createdate { get; set; }

        public long? CustomerID { get; set; }

        [StringLength(50)]
        public string ShipName { get; set; }

        [StringLength(50)]
        public string ShipMobile { get; set; }

        [StringLength(50)]
        public string ShipAdrress { get; set; }

        [StringLength(50)]
        public string ShipEmail { get; set; }

        public int? Status { get; set; }
    }
}
