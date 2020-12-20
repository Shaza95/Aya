using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TCC
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubjects_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Subjects.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            Session["UserName"] = null;
            Response.Redirect("~/Index.aspx");
        }

        protected void btnPosts_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Posts.aspx");
        }
    }
}