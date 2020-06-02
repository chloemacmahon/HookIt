using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace HookIt
{
    public partial class PatternAdd : System.Web.UI.Page
    {
        private SqlCommand comm;
        private SqlConnection conn;
        private String constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\chloe\Documents\University\CMPG 212\Projects\HookIt\HookIt\HookIt\App_Data\Tutorial.mdf;Integrated Security=True";
        private SqlDataAdapter adapt;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack != true)
            {
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
                 lblDescription.Visible = false;
                 txtDescription.Visible = false;
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
                for (int i = 0; i < txtYoutubelink.Text.Length ; i++)
                {
                    if ((txtYoutubelink.Text[i] != '/') && (ihash <= 2))
                    {
                        sYoutubeurl = sYoutubeurl + txtYoutubelink.Text[i];
                    }
                    else if ((txtYoutubelink.Text[i] == '/') && (ihash < 2))
                    {
                        sYoutubeurl = sYoutubeurl + "/" ;
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
                string sql = @"INSERT INTO List(Name, Link, Description) VALUES(@Name, @Link, @Description)";
                comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                comm.Parameters.AddWithValue("@Link", sYoutubeurl); //Add name field to database
                comm.Parameters.AddWithValue("@Description", txtDescription.Text);
                comm.ExecuteNonQuery();
                conn.Close();

            }

            //File Upload 
            string filePath = FileUploadFile.PostedFile.FileName;
            string fileName = Path.GetFileName(filePath);
            string extention = Path.GetExtension(filePath);

            conn = new SqlConnection(constr);
            conn.Open(); //Opens connection
            if (FileUploadFile.HasFile)
            {
                if (extention == ".pdf")
                {
                    filePath = "pdf";
                }
                else if (extention == ".txt")
                {
                    filePath = "txt";
                }
                Stream fs = FileUploadFile.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                string sql = @"INSERT INTO Pattern(Name, Category, File, FileType) VALUES(@Name, @Category,@File, @FileType)";
                comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                comm.Parameters.AddWithValue("@Category", DropDownListCategory.SelectedItem.ToString()); //Add name field to database
                comm.Parameters.AddWithValue("@File", bytes);
                comm.Parameters.AddWithValue("@FileType", extention);
            }
            else
            {
                string sql = @"INSERT INTO Pattern(Name, Category) VALUES(@Name, @Category)";
                comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@Name", txtName.Text); //Add name field to database
                comm.Parameters.AddWithValue("@Category", DropDownListCategory.SelectedItem.ToString()); //Add name field to database
            }

             
            
            comm.ExecuteNonQuery();
            conn.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxHasTut.Checked)
            {
                txtYoutubelink.Visible = true; //Shows youtube label and textbox
                lblYoutube.Visible = true;
                lblDescription.Visible = true;
                txtDescription.Visible = true;
            }
            else
            {
                txtYoutubelink.Visible = false; //Hides youtube label and textbox
                lblYoutube.Visible = false;
                lblDescription.Visible = false;
                txtDescription.Visible = false;
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = ListBox1.SelectedItem.ToString();
        }
    }
}