using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge.Challenges
{
    public partial class MostRecent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var videoFiles = Directory.EnumerateFiles(Server.MapPath("~/Video/"), "*.mp4", SearchOption.AllDirectories);
 
            literalVideo.Text = "<table><tbody>";

            foreach (string currentFile in videoFiles)
            {
                literalVideo.Text += "<tr><th>" + Path.GetFileName(currentFile) + "</th></tr><tr><th><video width='320' height='240' controls><source src='http://localhost:52326/Video/" + this.Page.User.Identity.Name + "\\" + Path.GetFileName(currentFile) + "' type='video/mp4'></video></th>";


            }
            literalVideo.Text += "</tbody></table>";

        }
    }
}