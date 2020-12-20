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
    public partial class SubjectManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            Session["UserName"] = null;
            Response.Redirect("~/Index.aspx");
        }

        protected void btnAddSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddSubject.aspx");
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(e.OldValues["Id"].ToString());
            String cmd = "update Subjects set Name = '" + e.NewValues[0]?.ToString() + "', DeptId = '" + e.NewValues[1]?.ToString() + "', Year = '" + e.NewValues[2]?.ToString()
                + "', Description = '" + e.NewValues[3]?.ToString() + "', TeacherName = '" + e.NewValues[4]?.ToString()
                + "' where id = " + id;
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            SqlDataSource1.UpdateCommand = cmd;
            Response.Redirect(Request.RawUrl);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(e.Values["Id"].ToString());
            String cmd = "delete from Subjects where id = " + id;
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            SqlDataSource1.DeleteCommand = cmd;
            Response.Redirect(Request.RawUrl);
        }
    }
}