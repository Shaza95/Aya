using System;

namespace TCC
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/index.aspx");
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