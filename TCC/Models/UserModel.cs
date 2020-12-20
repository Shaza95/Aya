using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TCC.Models
{
    public class UserModel
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }
}