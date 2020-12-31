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
    public partial class AddSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String cmd = $"insert into Subjects (Name, Description, TeacherName, Year, DeptId) values ('{txtName.Value}', '{txtDescription.Value}', '{txtTeacherName.Value}', '{txtYear.Value}', '{txtDeptId.Value}')";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            Response.Redirect("SubjectManagement.aspx");
        }
    }
}