﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HookIt
{
    public partial class Hooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHomepage_Click(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx"); //Navigates to homepage
        }

        protected void ibtnAluminium_Click(object sender, ImageClickEventArgs e)
        {
        }
    }
}