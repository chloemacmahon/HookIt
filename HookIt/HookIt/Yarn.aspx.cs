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
    public partial class Yarn : System.Web.UI.Page
    {
        private SqlConnection con;
        private string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\chloe\Documents\University\CMPG 212\Projects\HookIt\HookIt\HookIt\App_Data\Product.mdf;Integrated Security=True";
        private SqlCommand com;
        private DataSet ds = new DataSet();
        private SqlDataAdapter adapt = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(constr); //New Connection
            con.Open();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(constr); //New Connection
            con.Open();
            string sql = @"SELECT * FROM Yarn WHERE Type ='" + DropDownList1.SelectedValue.ToString() + "'";
            com = new SqlCommand(sql,con);
            adapt.SelectCommand = com;
            adapt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();

        }

        protected void btnHomepage_Click(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx"); //Navigates to homepage
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            string sql = "";
            if(chkAll.Checked)
            {
                if (DropDownListSearch.SelectedValue == "Colour")
                {
                    sql = @"SELECT Yarn.* FROM Yarn, Colour, ColourYarn WHERE Colour.Name LIKE '" + "%" + txtSearch.Text + "%" + "' AND Colour.Id = ColourYarn.ColourId AND Yarn.Id = ColourYarn.YarnId";
                }
                else
                {
                    sql = @"SELECT * FROM Yarn WHERE " + DropDownListSearch.SelectedValue.ToString() + " LIKE '" + "%" + txtSearch.Text + "%" + "'";
                }
            }
            else
            {
                if (DropDownListSearch.SelectedValue == "Colour")
                {
                    sql = @"SELECT * FROM Yarn, Colour, ColourYarn WHERE Colour.Name LIKE '" + "%" + txtSearch.Text + "%" + "' AND Colour.Id = ColourYarn.ColourId AND Yarn.Id = ColourYarn.YarnId AND Yarn.Type ='" + DropDownList1.SelectedValue.ToString() + "'";
                     
                }
                else
                {
                    sql = @"SELECT Yarn.* FROM Yarn WHERE " + DropDownListSearch.SelectedValue.ToString() + " LIKE '" + "%" + txtSearch.Text + "%" + "' AND Type ='" + DropDownList1.SelectedValue.ToString() + "'";
                }
            }

            con = new SqlConnection(constr); //New Connection
            con.Open();
            com = new SqlCommand(sql, con);
            adapt.SelectCommand = com;
            adapt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }
    }
}