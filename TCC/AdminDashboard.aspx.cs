using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCC
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/TrainerManagement.aspx");
            }
        }

        protected void btnStudentManagment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentManagement.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            Session["UserName"] = null;
            Response.Redirect("~/Index.aspx");
        }

        protected void btnSubjectManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SubjectManagement.aspx");
        }

        protected void btnPostsManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PostManagement.aspx");
        }

    }
}