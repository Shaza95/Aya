using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TCC.Models
{
    public class Subject
    {
        public string Name { set; get; }
        public string Description { set; get; }
        public string TeacherName { set; get; }
        public string Year { set; get; }
        public int DeptId { set; get; }
    }
}
