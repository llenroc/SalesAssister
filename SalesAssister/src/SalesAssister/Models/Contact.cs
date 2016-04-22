using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SalesAssister.Models
{
    [Table("Contacts")]
    public class Contact
    {
        [Key]
        public int ContactId { get; set; }
        public string Notes { get; set; }
        public int SalesPersonId { get; set; }
        public virtual SalesPerson salesperson { get; set; }
        public int ClientId { get; set; }
        public virtual Client client { get; set; }
    }
}
