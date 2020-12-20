using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TCC.Models
{
    public class Student
    {
        public string FirstName { set; get; }
        public string FatherName { set; get; }
        public string NickName { set; get; }
        public string MotherName { set; get; }
        public int DeptId { set; get; }
        public string Year { set; get; }
        public DateTime BirthDate { set; get; }
        public string Phone { set; get; }
        public string Email { set; get; }
        public string Password { set; get; }
    }
}
