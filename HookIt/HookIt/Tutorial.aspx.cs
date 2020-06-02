using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HookIt
{
    public partial class Tutorial : System.Web.UI.Page
    {
        
        private SqlCommand comm;
        private SqlConnection conn;
        private String constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\chloe\Documents\University\CMPG 212\Projects\HookIt\HookIt\HookIt\App_Data\Tutorial.mdf;Integrated Security=True";
        private SqlDataAdapter adapt;
        private DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                conn = new SqlConnection(constr);
                conn.Open(); //Opens database

                adapt = new SqlDataAdapter();
                string sql = @"SELECT * FROM List";
                comm = new SqlCommand(sql, conn);
                SqlDataReader dreader = comm.ExecuteReader();
                while (dreader.Read())
                {
                    DropDownListTutotial.Items.Add(dreader.GetValue(1).ToString()); //Reads to drop down list
                }
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open(); //Opens connection 
            adapt = new SqlDataAdapter();
            string sql = @"INSERT INTO Requested(Searched) VALUES(@Searched)";
            comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@Searched", txtYoutube.Text); //Adds searched field to database
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("https://www.youtube.com/results?search_query=" + txtYoutube.Text);//Navigates user to youtube
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Label1.Text = DropDownListTutotial.Items[DropDownListTutotial.SelectedIndex].ToString();
            }
            string sSelectedVid = Label1.Text;
            conn = new SqlConnection(constr);
            conn.Open(); //Opens database

            adapt = new SqlDataAdapter();
            string sql = @"SELECT * FROM List WHERE Name = '"+sSelectedVid+"'";
            comm = new SqlCommand(sql, conn);
            SqlDataReader dreader = comm.ExecuteReader();
            string sUrl = "";
            while (dreader.Read())
            {
                sUrl = dreader.GetValue(2).ToString();
            }
            youtubevid.Attributes["src"] = sUrl; //Changes video in iframe to selected tutorial
            conn.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("PatternAdd.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx");
        }
    }
}