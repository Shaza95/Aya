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
    public partial class Posts : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HtmlGenericControl> posts = new List<HtmlGenericControl>();
            string cmd = "select Id, Body, Date, image, fileName from Posts order by Date desc";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DataTable postsDT = DAL.SelectData(cmd);
            foreach (DataRow post in postsDT.Rows)
            {
                HtmlGenericControl newPost = new HtmlGenericControl("div");
                newPost.Attributes.Add("class", "post");
                HtmlGenericControl pos = new HtmlGenericControl("p");
                pos.Attributes.Add("class", "postText");
                pos.InnerHtml = post["Body"].ToString() + "<br>";
                newPost.Controls.Add(pos);
                if (!string.IsNullOrWhiteSpace(post["fileName"].ToString()))
                {
                    DirectoryInfo di = new DirectoryInfo(Server.MapPath("~/lecture"));
                    HyperLink HL = new HyperLink();
                    HL.NavigateUrl = "downloading.aspx?file=" + post["fileName"].ToString();
                    HL.Text = post["fileName"].ToString();
                    HL.Attributes.Add("class", "URL");
                    newPost.Controls.Add(HL);
                    newPost.Controls.Add(new LiteralControl("<br/><br/>"));
                }
                if (!string.IsNullOrWhiteSpace(post["image"].ToString()))
                {
                    DirectoryInfo dirInfo = new System.IO.DirectoryInfo(Server.MapPath("~/image/"));
                    FileInfo file = dirInfo.GetFiles(post["image"].ToString())[0];
                    HtmlImage img = new HtmlImage();
                    img.Attributes.Add("class", "image");
                    img.Src = "~/image/" + post["image"].ToString();
                    img.Width = 130;
                    img.Height = 130;
                    newPost.Controls.Add(img);
                    newPost.Controls.Add(new LiteralControl("<br/>"));
                }
                TextBox tb = new TextBox();
                tb.Attributes.Add("class", "commentTB");
                tb.MaxLength = 150;
                tb.ID = "tb" + post["Id"].ToString();
                newPost.Controls.Add(tb);
                Button btn = new Button();
                btn.Attributes.Add("class", "commentBtn");
                btn.Text = "comment";
                btn.Command += new CommandEventHandler(comment_Click);
                Button btnSave = new Button();
                btnSave.Attributes.Add("class", "commentBtn");
                btnSave.Text = "save";
                btnSave.Command += new CommandEventHandler(save_Click);
                int postId = (int)post["Id"];
                int UserId = int.Parse(Session["UserId"].ToString());
                btn.CommandArgument = post["Id"].ToString() + ';' + UserId.ToString();
                btnSave.CommandArgument = post["Id"].ToString() + ';' + UserId.ToString();
                newPost.Controls.Add(btn);
                newPost.Controls.Add(btnSave);
                LiteralControl l = new LiteralControl();
                l.Text = "<br>";
                newPost.Controls.Add(l);
                cmd = $"select Body, UserName, Date, Id from (select Body, CONCAT(Name, ' ', Nick) As UserName, Date, Comments.Id from Comments join Users on Comments.UserId = Users.Id where Comments.PostId = {int.Parse(post["Id"].ToString())})t order by t.Date  desc";
                DataTable commentsDT = DAL.SelectData(cmd);
                foreach (DataRow com in commentsDT.Rows)
                {
                    HtmlGenericControl commentDiv = new HtmlGenericControl("div");
                    commentDiv.Attributes.Add("class", "commentDiv");
                    HtmlGenericControl nme = new HtmlGenericControl("p");
                    nme.Attributes.Add("class", "commentName");
                    nme.InnerHtml = com["UserName"] + " : ";
                    HtmlGenericControl dte = new HtmlGenericControl("p");
                    dte.Attributes.Add("class", "commentDate");
                    dte.InnerHtml = com["Date"].ToString();
                    HtmlGenericControl comTxt = new HtmlGenericControl("p");
                    comTxt.Attributes.Add("class", "commentText");
                    comTxt.InnerHtml = com["Body"] + "<br>";
                    commentDiv.Controls.Add(nme);
                    commentDiv.Controls.Add(dte);
                    commentDiv.Controls.Add(comTxt);
                    if (com["UserName"].ToString() == Session["UserName"].ToString())
                    {
                        LinkButton lbEdit = new LinkButton();
                        LinkButton lbDelete = new LinkButton();
                        lbEdit.Attributes.Add("class", "commentLnk");
                        lbEdit.Text = "edit";
                        lbEdit.Command += new CommandEventHandler(edit_Click);
                        lbDelete.Attributes.Add("class", "commentLnk");
                        lbDelete.Text = "delete";
                        lbDelete.Command += new CommandEventHandler(delete_Click);
                        lbDelete.CommandArgument = com["Id"].ToString();
                        commentDiv.Controls.Add(lbEdit);
                        commentDiv.Controls.Add(lbDelete);
                    }
                    newPost.Controls.Add(commentDiv);
                }
                posts.Add(newPost);
            }
            DAL.Close();
            foreach (HtmlGenericControl post in posts)
                main.Controls.Add(post);
        }
        protected void comment_Click(object sender, CommandEventArgs e)
        {
            string info = e.CommandArgument.ToString();
            string[] arg = new string[2];
            char[] splitter = { ';' };
            arg = info.Split(splitter);
            int postId = int.Parse(arg[0]);
            int UserId = int.Parse(arg[1]);
            DateTime date = DateTime.Now;
            string format = "yyyy-MM-dd";
            string cmd = $"insert into Comments (PostId, UserId, Date, Body) values ('{postId}', '{UserId}', '{date.ToString(format)}', '{((TextBox)FindControl("tb" + arg[0])).Text}')";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            Response.Redirect(Request.RawUrl);
        }
        protected void save_Click(object sender, CommandEventArgs e)
        {
            string info = e.CommandArgument.ToString();
            string[] arg = new string[2];
            char[] splitter = { ';' };
            arg = info.Split(splitter);
            int postId = int.Parse(arg[0]);
            int UserId = int.Parse(arg[1]);
            string cmd = $"insert into SavedPosts (PostId, UserId) values ('{postId}', '{UserId}')";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
        }
        protected void edit_Click(object sender, CommandEventArgs e)
        {

        }
        protected void delete_Click(object sender, CommandEventArgs e)
        {
            int commentId = int.Parse(e.CommandArgument.ToString());
            string cmd = $"delete from Comments where Id = {commentId}";
            DataAccessLayer DAL = new DataAccessLayer();
            DAL.Open();
            DAL.ExecuteCommand(cmd);
            DAL.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}