using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace project_for_devops.Models
{
    public class accountlog
    {
        [Key]
        public int userid { get; set; }
        public string username { get; set; }
        public string password { get; set; }
    }
}