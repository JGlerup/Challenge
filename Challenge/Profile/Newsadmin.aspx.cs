using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge.Profile
{
    public partial class Newsadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertNews_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Title"].DefaultValue = ((TextBox)NewsGrid.FooterRow.FindControl("InsertTitle")).Text;
            SqlDataSource1.InsertParameters["ContentText"].DefaultValue = ((TextBox)NewsGrid.FooterRow.FindControl("InsertContent")).Text;

            SqlDataSource1.Insert();
        }

    }
}