using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HookIt
{
    public partial class Yarn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnYarnType.Text = DropDownList1.Items[DropDownList1.SelectedIndex].ToString(); //Changes button text
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnYarnType.Text = DropDownList1.Items[DropDownList1.SelectedIndex].ToString(); //Changes button text

        }

        protected void btnHomepage_Click(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx"); //Navigates to homepage
        }
    }
}