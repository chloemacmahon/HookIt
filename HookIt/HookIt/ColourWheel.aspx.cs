using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HookIt
{
    public partial class ColourWheel : System.Web.UI.Page
    {
        private SqlCommand comm;
        private SqlConnection conn;
        private String constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Product.mdf;Integrated Security=True"; //Databse elements
        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.IsPostBack != true) //Hides all colours
            {
                colour1.Visible = false;
                colour2.Visible = false;
                colour3.Visible = false;
                colour4.Visible = false;
                colour5.Visible = false;
                colour6.Visible = false;
                colour7.Visible = false;
                colour8.Visible = false;
                colour9.Visible = false;
                colour10.Visible = false;
                HttpCookie _userCookie = Request.Cookies["UserInformation"]; //Receives cookie of colours

                if (_userCookie != null)
                {
                    conn = new SqlConnection(constr); //Creates connection
                    conn.Open();
                    string[] colours = _userCookie["ColourSearch"].ToString().Split(','); //Splits cookie into different colour strings
                    colours = colours.Distinct().ToArray(); //Removes duplicates 
                    string sqlsearch = "Name = '" + colours[0].ToString() +"'"; //Creates search sql colours 
                    for (int i = 1; i < colours.Length; i++)
                    {
                        sqlsearch = sqlsearch + " or Name = '" + colours[i].ToString() + "'";
                    }
                    string sql = "SELECT * FROM Colour WHERE " + sqlsearch;
                    comm = new SqlCommand(sql, conn);
                    SqlDataReader dreader = comm.ExecuteReader();
                    int num = 1;
                    while (dreader.Read()) //Reads table elements 
                    {
                        switch (num) //Changes colour input based on database input 
                        {
                            case (1):
                                {
                                    colour1.Visible = true;
                                    colour1.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (2):
                                {
                                    colour2.Visible = true;
                                    colour2.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (3):
                                {
                                    colour3.Visible = true;
                                    colour3.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (4):
                                {
                                    colour4.Visible = true;
                                    colour4.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (5):
                                {
                                    colour5.Visible = true;
                                    colour5.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (6):
                                {
                                    colour6.Visible = true;
                                    colour6.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (7):
                                {
                                    colour7.Visible = true;
                                    colour7.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (8):
                                {
                                    colour8.Visible = true;
                                    colour8.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (9):
                                {
                                    colour9.Visible = true;
                                    colour9.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                            case (10):
                                {
                                    colour10.Visible = true;
                                    colour10.Value = "#" + dreader.GetValue(2);
                                    break;
                                }
                        }
                        num += 1;
                    }
                    dreader.Close();
                    conn.Close();
                    Session["AmountOfColours"] = num; //Sets amount of colours
                }
            }
        }
        private string randomColour(int add)
        {
            Random rand = new Random(DateTime.Now.Millisecond + add);
            
            string colourcode = "#";
            for (int i = 0; i < 6; i++)
            {
                colourcode = colourcode + (rand.Next() % 16).ToString("X");
            }
            return colourcode;
        }
        protected void btnCreateColours_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(txtNumberColours.Text) >= 1) //Displays colour input based on how many colours need to be displayed
            {
                colour1.Visible = true;
                colour1.Value = randomColour(13);
                
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 2)
            {
                colour2.Visible = true;
                colour2.Value = randomColour(29);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 3)
            {
                colour3.Visible = true;
                colour3.Value = randomColour(37);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 4)
            {
                colour4.Visible = true;
                colour4.Value = randomColour(22);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 5)
            {
                colour5.Visible = true;
                colour5.Value = randomColour(16);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 6)
            {
                colour6.Visible = true;
                colour6.Value = randomColour(55);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 7)
            {
                colour7.Visible = true;
                colour7.Value = randomColour(7);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 8)
            {
                colour8.Visible = true;
                colour8.Value = randomColour(46);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 9)
            {
                colour9.Visible = true;
                colour9.Value = randomColour(77);
            }
            if (Convert.ToInt32(txtNumberColours.Text) >= 10)
            {
                colour10.Visible = true;
                colour10.Value = randomColour(33);
            }
            int itotalColours = Convert.ToInt32(txtNumberColours.Text); //Saves variable for tota colours
            Session["AmountOfColours"] = itotalColours;
            
        }

        protected void btnChangeColour_Click(object sender, EventArgs e)
        {
            
            if (Session["AmountOfColours"] != null)
            {
                int itotalColours = Convert.ToInt32(Session["AmountOfColours"]);
                List<string> colour = new List<string>(); //Creates string list 
                if (itotalColours >= 1) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl1 = new Panel();
                     pnl1.BackColor = System.Drawing.ColorTranslator.FromHtml(colour1.Value);
                     pnl1.CssClass = "SmallPanel";
                     colour.Add(colour1.Value.ToString()); //Adds items to string list 
                     pnlShowColours.Controls.Add(pnl1);
                    
                }
                if (itotalColours >= 2) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl2 = new Panel();
                     pnl2.BackColor = System.Drawing.ColorTranslator.FromHtml(colour2.Value);
                     pnl2.CssClass = "SmallPanel";
                     colour.Add(colour2.Value.ToString()); //Adds items to string list 
                     pnlShowColours.Controls.Add(pnl2);
                }
                if (itotalColours >= 3) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl3 = new Panel();
                     pnl3.BackColor = System.Drawing.ColorTranslator.FromHtml(colour3.Value);
                     pnl3.CssClass = "SmallPanel";
                    colour.Add(colour3.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl3);
                }
                if (itotalColours >= 4) //Displays colour input based on how many colours need to be displayed
                { 
                     Panel pnl4 = new Panel();
                     pnl4.BackColor = System.Drawing.ColorTranslator.FromHtml(colour4.Value);
                     pnl4.CssClass = "SmallPanel";
                    colour.Add(colour4.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl4);
                }
                if (itotalColours >= 5) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl5 = new Panel();
                     pnl5.BackColor = System.Drawing.ColorTranslator.FromHtml(colour5.Value);
                     pnl5.CssClass = "SmallPanel";
                    colour.Add(colour5.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl5);
                }
                if (itotalColours >= 6) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl6 = new Panel();
                     pnl6.BackColor = System.Drawing.ColorTranslator.FromHtml(colour6.Value);
                     pnl6.CssClass = "SmallPanel";
                    colour.Add(colour6.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl6);
                }
                if (itotalColours >= 7) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl7 = new Panel();
                     pnl7.BackColor = System.Drawing.ColorTranslator.FromHtml(colour7.Value);
                     pnl7.CssClass = "SmallPanel";
                    colour.Add(colour7.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl7);
                }
                if (itotalColours >= 8) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl8 = new Panel();
                     pnl8.BackColor = System.Drawing.ColorTranslator.FromHtml(colour8.Value);
                     pnl8.CssClass = "SmallPanel";
                    colour.Add(colour8.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl8);
                }
                if (itotalColours >= 9) //Displays colour input based on how many colours need to be displayed
                {
                     Panel pnl9 = new Panel();
                     pnl9.BackColor = System.Drawing.ColorTranslator.FromHtml(colour9.Value);
                     pnl9.CssClass = "SmallPanel";
                    colour.Add(colour9.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl9);
                }
                if (itotalColours >= 10) //Displays colour input based on how many colours need to be displayed
                {
                    Panel pnl10 = new Panel();
                    pnl10.BackColor = System.Drawing.ColorTranslator.FromHtml(colour10.Value);
                    pnl10.CssClass = "SmallPanel";
                    colour.Add(colour10.Value.ToString()); //Adds items to string list 
                    pnlShowColours.Controls.Add(pnl10);
                }
                string coloursStored = colour.Aggregate((a, b) => a + " , " + b); //Sends list to string 
                Response.Cookies.Add(new HttpCookie("chosen colour", coloursStored)); //Saves colours to string
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}
