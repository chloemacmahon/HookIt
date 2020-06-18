using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace HookIt
{
    public partial class PatternAdd : System.Web.UI.Page
    {
        private SqlCommand comm;
        private SqlConnection conn;
        private String constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Tutorial.mdf;Integrated Security=True";
        private SqlDataAdapter adapt;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack != true)
            {
                body.Attributes.Add("style", "background:url(images/Pattern6.jpg);background-repeat:no-repeat;"); //Changes background to normal homepage background
                conn = new SqlConnection(constr);
                conn.Open(); //Opens database

                adapt = new SqlDataAdapter();
                string sql = @"SELECT * FROM Requested";
                comm = new SqlCommand(sql, conn);
                SqlDataReader dreader = comm.ExecuteReader();
                
                while (dreader.Read())
                {

                    ListBox1.Items.Add(dreader.GetValue(1).ToString());
                }
                ListBox1.Items.Add("");

                 txtYoutubelink.Visible = false; //Hides youtube label and textbox
                 lblYoutube.Visible = false;
            }
            if (String.Compare(ListBox1.Items[0].ToString(),"") != 0)
            {
                ListBox1.Visible = true;
            }
            else
            {
                ListBox1.Visible = false;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Changes the youtube url to the embeded format 
            string sYoutubeurl = "";
            int ihash = 0;
            int iequal = 0;
            if (CheckBoxHasTut.Checked)
            {
                try
                {
                    for (int i = 0; i < txtYoutubelink.Text.Length; i++)
                    {
                        if ((txtYoutubelink.Text[i] != '/') && (ihash <= 2))
                        {
                            sYoutubeurl = sYoutubeurl + txtYoutubelink.Text[i];
                        }
                        else if ((txtYoutubelink.Text[i] == '/') && (ihash < 2))
                        {
                            sYoutubeurl = sYoutubeurl + "/";
                            ihash++;
                        }
                        else if ((txtYoutubelink.Text[i] == '/') && (ihash == 2))
                        {
                            sYoutubeurl = sYoutubeurl + "/" + "embed";
                            ihash++;
                        }
                        else if ((txtYoutubelink.Text[i] != '=') && (iequal == 1))
                        {
                            sYoutubeurl = sYoutubeurl + txtYoutubelink.Text[i];
                        }
                        else if (txtYoutubelink.Text[i] == '=')
                        {
                            iequal++;
                            sYoutubeurl = sYoutubeurl + "/";
                        }
                    }
                    conn = new SqlConnection(constr);
                    conn.Open(); //Opens connection
                    string sql = @"INSERT INTO List(Name, Link) VALUES(@Name, @Link)";
                    comm = new SqlCommand(sql, conn);
                    comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                    comm.Parameters.AddWithValue("@Link", sYoutubeurl); //Add name field to database
                    comm.ExecuteNonQuery();
                    conn.Close();
                    string alert = "alert(\"Thank you for including a tutorial link\");"; //Displays error alert 
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
                }
                catch(Exception )
                {
                    string alert = "alert(\"Please enter a valid link\");"; //Displays error alert 
                    ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", alert, true);
                }

                

            }

            

            conn = new SqlConnection(constr);
            conn.Open(); //Opens connection
            if (FileUploadFile.HasFile)
            {
                //File Upload 
                string filePath = FileUploadFile.PostedFile.FileName;
                string fileName = Path.GetFileName(filePath);
                string extention = Path.GetExtension(filePath);
                if (extention == ".txt")
                {
                    //Open and reads file
                    StreamReader inputfile = new StreamReader(FileUploadFile.FileContent);
                    string text = inputfile.ReadToEnd();
                    
                    string sql = @"INSERT INTO Pattern(Name, Category, Text) VALUES(@Name, @Category, @Text)";
                    comm = new SqlCommand(sql, conn);
                    comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                    comm.Parameters.AddWithValue("@Category", DropDownListCategory.SelectedItem.ToString()); //Add name field to database
                    comm.Parameters.AddWithValue("@Text", text); //Add name field to database
                    comm.ExecuteNonQuery();
                    conn.Close();
                    inputfile.Close();
                }
                else
                {
                    string alert = "alert(\"Please enter a valid link\");"; //Displays error alert 
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", alert, true);
                }
                
                
            }
            else
            {
                string sql = @"INSERT INTO Pattern(Name, Category) VALUES(@Name, @Category)";
                comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                comm.Parameters.AddWithValue("@Category", DropDownListCategory.SelectedItem.ToString()); //Add name field to database
                comm.ExecuteNonQuery();
                conn.Close();
            }
            if (ListBox1.SelectedIndex >= 0)
            {
                if (ListBox1.Items[ListBox1.SelectedIndex].ToString() == txtName.Text)
                {
                    conn.Open(); //Opens connection
                    string sql = @"DELETE FROM Requested WHERE searched = '" + ListBox1.Items[ListBox1.SelectedIndex].ToString() + "'"; //Deletes item if a tutorial has been added
                    comm = new SqlCommand(sql, conn);
                    comm.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxHasTut.Checked)
            {
                txtYoutubelink.Visible = true; //Shows youtube label and textbox
                lblYoutube.Visible = true;
            }
            else
            {
                txtYoutubelink.Visible = false; //Hides youtube label and textbox
                lblYoutube.Visible = false;
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = ListBox1.SelectedItem.ToString();
        }
    }
}