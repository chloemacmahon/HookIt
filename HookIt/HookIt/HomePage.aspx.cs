using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace HookIt
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            homebody.Attributes.Add("style", "background:url(images/floral.jpg);background-repeat:no-repeat;color:#669999;"); //Changes background to normal homepage background
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
        protected void btnHooks_MouseHover(object sender, EventArgs e)
        {
            homebody.Attributes.Add("style", "background:url(images/hooks1.jpg);background-repeat:no-repeat;color:#FFFFFF;"); //Changes background when user hovers over hooks button
        }
        protected void btnYarn_MouseHover(object sender, EventArgs e)
        {
            homebody.Attributes.Add("style", "background:url(images/yarn.jpg);background-repeat:no-repeat;color:#FFFFFF;"); //Changes background when user hovers over yarn button
        }
        protected void btnPattern_MouseHover(object sender, EventArgs e)
        {
            homebody.Attributes.Add("style", "background:url(images/pattern1.jpg);background-repeat:no-repeat;color:#000000;"); //Changes background when user hovers over pattern button
        }
        protected void resetHomePage(object sender, EventArgs e)
        {
            homebody.Attributes.Add("style", "background:url(images/floral.jpg);background-repeat:no-repeat;color:#669999;"); //Changes background to normal homepage background
        }
        protected void btnHooks_Click(object sender, EventArgs e)
        {
            Server.Transfer("Hooks.aspx"); //Navigates to hooks web page
        }

        protected void btnYarn_Click(object sender, EventArgs e)
        {
            Server.Transfer("Yarn.aspx"); //Navigates to yarn web page
        }

        protected void btnPatterns_Click(object sender, EventArgs e)
        {

        }
    }
}