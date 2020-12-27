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
using TCC.Models;

namespace TCC
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVisitor_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visitor.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DataTable users = DAL.SelectData($"select * from Users where Email = '{txtEmail.Value}' and Password = '{txtPWD.Value}'");
            if (users.Rows.Count > 0)
            {
                Session["UserID"] = users.Rows[0]["Id"].ToString();
                Session["UserName"] = users.Rows[0]["Name"].ToString() + " " + users.Rows[0]["Nick"];
                if (users.Rows[0]["DeptId"].ToString() == ((int)enumDepts.Admin).ToString())
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Session["DeptId"] = int.Parse(users.Rows[0]["DeptId"].ToString());
                    Response.Redirect("StudentDashboard.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email or Password')</script>");
            }
        }
    }
}