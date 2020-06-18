using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace HookIt
{
    public partial class PatternView : System.Web.UI.Page
    {
        private string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Tutorial.mdf;Integrated Security=True";
        private SqlConnection conn;
        private SqlCommand comm;
        private DataSet ds = new DataSet();
        private SqlDataAdapter adapt = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                conn = new SqlConnection(constr);
                conn.Open(); //Opens database

                adapt = new SqlDataAdapter();
                string sql = "";
                if (Session["SearchCriteria"] == null)
                {
                    sql = @"SELECT Id, Name, Category FROM Pattern";
                }
                else
                {
                    sql = @"SELECT  Id, Name, Category FROM Pattern WHERE Category = '" + Session["SearchCriteria"].ToString() + "'";
                }
                comm = new SqlCommand(sql, conn);
                adapt.SelectCommand = comm;
                adapt.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                conn.Close();
                lstPattern.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open(); //Opens database

            adapt = new SqlDataAdapter();
            string sql = @"SELECT Id, Name, Category FROM Pattern WHERE Name LIKE '" +"%" + txtSearch.Text.ToUpper() + "%" + "'";
            comm = new SqlCommand(sql, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            conn = new SqlConnection(constr);
            conn.Open(); //Opens database

            adapt = new SqlDataAdapter();
            string sql = "";
            if (Session["SearchCriteria"] == null)
            {
                sql = @"SELECT Id, Name, Category FROM Pattern";
            }
            else
            {
                sql = @"SELECT  Id, Name, Category FROM Pattern WHERE Category = '" + Session["SearchCriteria"].ToString() + "'";
            }
            comm = new SqlCommand(sql, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open(); //Opens database

            adapt = new SqlDataAdapter();
            string sql = "";
            if (Session["SearchCriteria"] == null)
            {
                sql = @"SELECT Id, Name, Category FROM Pattern";
            }
            else
            {
                sql = @"SELECT  Id, Name, Category FROM Pattern WHERE Category = '" + Session["SearchCriteria"].ToString() + "'";
            }
            comm = new SqlCommand(sql, conn);
            adapt.SelectCommand = comm;
            adapt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            conn = new SqlConnection(constr);
            conn.Open(); //Opens database
            adapt = new SqlDataAdapter();
            sql = @"SELECT * FROM Pattern WHERE ID = " + id.ToString() + ""; //Searches database for pattern file
            comm = new SqlCommand(sql, conn);
            SqlDataReader dreader = comm.ExecuteReader();
            dreader.Read();
            if (dreader.GetValue(3) != null) //Displays pattern in list box
            {
                string text = dreader.GetValue(3).ToString();
                string[] pattern = text.Split(Environment.NewLine.ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
                lstPattern.Visible = true;
                lstPattern.Items.Clear();
                foreach (string line in pattern)
                {
                    lstPattern.Items.Add(line);
                }
                
            }
            conn.Close();

        }
    }
}