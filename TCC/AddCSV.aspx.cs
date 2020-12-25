using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TCC.DAL;

namespace TCC
{
    public partial class AddCSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        private void InsertCSVRecords(DataTable csvdt)
        {
            DataAccessLayer DAL = new DataAccessLayer();
            SqlBulkCopy objbulk = new SqlBulkCopy(DAL.SqlConnection); 
            objbulk.DestinationTableName = "Users";
            objbulk.ColumnMappings.Add("Name", "Name");
            objbulk.ColumnMappings.Add("Father", "Father");
            objbulk.ColumnMappings.Add("Nick", "Nick");
            objbulk.ColumnMappings.Add("Mother", "Mother");
            objbulk.ColumnMappings.Add("DeptId", "DeptId");
            objbulk.ColumnMappings.Add("Year", "Year");
            objbulk.ColumnMappings.Add("BirthDate", "BirthDate");
            objbulk.ColumnMappings.Add("Phone", "Phone");
            objbulk.ColumnMappings.Add("Email", "Email");
            objbulk.ColumnMappings.Add("Password", "Password");
            DAL.Open();
            objbulk.WriteToServer(csvdt);
            DAL.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable tblcsv = new DataTable();
            tblcsv.Columns.Add("Name");
            tblcsv.Columns.Add("Father");
            tblcsv.Columns.Add("Nick");
            tblcsv.Columns.Add("Mother");
            tblcsv.Columns.Add("DeptId");
            tblcsv.Columns.Add("Year");
            tblcsv.Columns.Add("BirthDate");
            tblcsv.Columns.Add("Phone");
            tblcsv.Columns.Add("Email");
            tblcsv.Columns.Add("Password");
            string CSVFilePath = Path.GetFullPath(FileUpload1.PostedFile.FileName);
            string ReadCSV = File.ReadAllText(CSVFilePath);
            foreach (string csvRow in ReadCSV.Split('\n'))
            {
                if (!string.IsNullOrEmpty(csvRow))
                {
                    tblcsv.Rows.Add();
                    int count = 0;
                    foreach (string FileRec in csvRow.Split(','))
                    {
                        tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                        count++;
                    }
                }
            }
            InsertCSVRecords(tblcsv);
        }
    }
}