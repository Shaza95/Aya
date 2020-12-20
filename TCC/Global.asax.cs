using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using TCC.DAL;

namespace TCC
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            dataAccessLayer.Open();
            var depts = dataAccessLayer.SelectData("SELECT * FROM Departments");
            if (depts.Rows.Count == 0)
            {
                dataAccessLayer.ExecuteCommand("INSERT INTO Departments VALUES('Admin')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Departments VALUES('SOFTWARE')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Departments VALUES('NETWORKS')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Departments VALUES('COMPUTERS')");
            }
            var Admin = dataAccessLayer.SelectData("SELECT * FROM Users");
            if (Admin.Rows.Count == 0)
            {
                var Dept = dataAccessLayer.SelectData("SELECT Id FROM Departments WHERE Name = 'Admin'");
                var dptRows = Dept.Rows[0][0];
                var AdminDeptId = Convert.ToInt32(dptRows);
                dataAccessLayer.ExecuteCommand("INSERT INTO Users (Name, Email, Password, BirthDate, DeptId) VALUES('Alaa kh' , 'alaa@tcc.com' , '1234567' , '05/16/1997' , " + AdminDeptId + ")");
            }
            dataAccessLayer.Close();
        }
    }
}