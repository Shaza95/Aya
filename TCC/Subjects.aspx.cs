using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TCC.DAL;

namespace TCC
{
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            string cmd = $"SELECT Subjects.[Id], Subjects.[Name], [Year], [Description], TeacherName FROM Subjects WHERE Subjects.DeptId = {Session["DeptId"]}";
        }
    }
}