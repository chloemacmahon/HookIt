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
        private string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Product.mdf;Integrated Security=True";
        private SqlCommand com;
        private DataSet ds = new DataSet();
        private SqlDataAdapter adapt = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(constr); //New Connection
            con.Open();
            con.Close();
            if (!Page.IsPostBack) //Resets Cookies
            {
                HttpCookie _usercookie = Request.Cookies["UserInformation"];
                if (_usercookie != null)
                {
                    _usercookie["ColourSearch"] = "";
                }
            }
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
            int icounter = 0;
            while (icounter < GridView1.Rows.Count) 
            {
                GridView1.Rows[icounter].Cells[0].Style.Add("style", "background-color: white");
                GridView1.Rows[icounter].Cells[6].Style.Add("style", "background-color: white");
                icounter++;
            }
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
                    HttpCookie _usercookie = Request.Cookies["UserInformation"];
                    if (_usercookie != null)
                    {
                        _usercookie["ColourSearch"] = _usercookie["ColourSearch"].ToString() + "," + txtSearch.Text; //Adds colour to cookie 
                        Response.Cookies.Add(_usercookie);
                    }
                    else
                    {
                        _usercookie = new HttpCookie("UserInformation");
                        _usercookie["ColourSearch"] = txtSearch.Text; //Adds colour to cookie 
                        Response.Cookies.Add(_usercookie);
                    }
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
                    HttpCookie _usercookie = Request.Cookies["UserInformation"];
                    if (_usercookie != null)
                    {
                        _usercookie["ColourSearch"] = _usercookie["ColourSearch"].ToString() + ","+ txtSearch.Text; //Adds colour to cookie 
                        Response.Cookies.Add(_usercookie);
                    }
                    else
                    {
                        _usercookie = new HttpCookie("UserInformation");
                        _usercookie["ColourSearch"] = txtSearch.Text; //Adds colour to cookie 
                        Response.Cookies.Add(_usercookie);
                    }
                }
                else
                {
                    sql = @"SELECT Yarn.* FROM Yarn WHERE " + DropDownListSearch.SelectedValue.ToString() + " LIKE '" + "%" + txtSearch.Text + "%" + "' AND Type ='" + DropDownList1.SelectedValue.ToString() + "'"; //Searh sql
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
            int icounter = 0;
            while (icounter < GridView1.Rows.Count)
            {
                GridView1.Rows[icounter].Cells[0].Style.Add("style", "background-color: white");
                GridView1.Rows[icounter].Cells[6].Style.Add("style", "background-color: white");
                icounter++;
            }
            if (icounter == 0)
            {
                string alert = "alert(\"No Wool to show in those search parameters\");"; //Displays error alert 
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
            }
        }

        protected void DropDownListSearch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnColourWheel_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ColourWheel.aspx"); //Redirects to colourwheel
        }
    }
}