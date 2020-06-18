using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HookIt
{
    public partial class PatternMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //body.Attributes.Add("style", "background:url(images/blanket.jpg);background-repeat:no-repeat;"); //Changes background to normal homepage background
        }

        protected void btnBlock_Click(object sender, EventArgs e)
        {

        }

        protected void btnBlock_Click1(object sender, EventArgs e)
        {
            Session["SearchCriteria"] = "Blocks";
            Server.Transfer("PatternView.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Server.Transfer("PatternAdd.aspx");
        }

        protected void btnAll_Click(object sender, EventArgs e)
        {
            Server.Transfer("PatternView.aspx");
        }

        protected void btnBlanket_Click(object sender, EventArgs e)
        {
            Session["SearchCriteria"] = "Afghans";
            Server.Transfer("PatternView.aspx");
        }

        protected void btnClothes_Click(object sender, EventArgs e)
        {
            Session["SearchCriteria"] = "Clothes";
            Server.Transfer("PatternView.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx");
        }
    }
}