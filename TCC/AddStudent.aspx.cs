using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using TCC.DAL;

namespace TCC
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String cmd = $"insert into Users (Name, Father, Nick, Mother, Email, Password, Year, Phone, BirthDate, DeptId) values ('{txtName.Value}', '{txtFather.Value}', '{txtNick.Value}', '{txtMother.Value}', '{txtEmail.Value}', '{txtPWD.Value}', '{txtYear.Value}', '{txtPhone.Value}', '{txtBirthDate.Value}', '{txtDeptId.Value}')";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
           Response.Redirect("StudentManagement.aspx");
        }
    }
}