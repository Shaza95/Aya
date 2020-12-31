using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using TCC.DAL;

namespace TCC
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
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

        protected void btnSavedPosts_Click(object sender, EventArgs e)
        {
            string fileName = "MySavedPosts.txt";
            string filePath = Server.MapPath("Files/" + fileName);
            string cmd = $"select Body, Date from Posts join SavedPosts on Posts.Id = SavedPosts.PostId where SavedPosts.UserId = {int.Parse(Session["UserId"].ToString())} order by Date Desc";
            using (StreamWriter outputFile = new StreamWriter(filePath))
            {
                DataAccessLayer DAL = new DataAccessLayer();
                DAL.Open();
                DataTable posts = DAL.SelectData(cmd);
                DAL.Close();
                foreach (DataRow row in posts.Rows)
                {
                    outputFile.WriteLine(row["Date"].ToString());
                    outputFile.WriteLine(row["Body"].ToString());
                    outputFile.WriteLine("\n\n");
                }
            }
            Response.Redirect("downloading.aspx?file=" + fileName);
        }
    }
}