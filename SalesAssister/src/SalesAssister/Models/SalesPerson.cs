using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SalesAssister.Models
{
    [Table("SalesPersons")]
    public class SalesPerson
    {
        [Key]
        public int SalesPersonId { get; set; }
        public string Name { get; set; }
        public string Company { get; set; }  
    }
}
