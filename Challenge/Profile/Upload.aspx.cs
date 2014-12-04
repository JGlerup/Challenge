using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge.Profile
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            if (VideoUpload.HasFile)
            {
                string fileExt =
                   System.IO.Path.GetExtension(VideoUpload.FileName);

                if (fileExt == ".mp4")
                {
                    try
                    {
                        VideoUpload.SaveAs(Server.MapPath("~/Video/") + this.Page.User.Identity.Name +"/"+
                           VideoUpload.FileName);
                        Label1.Text = "File name: " +
                            VideoUpload.PostedFile.FileName + "<br>" +
                            VideoUpload.PostedFile.ContentLength + " kb<br>" +
                            "Content type: " +
                            VideoUpload.PostedFile.ContentType;
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "ERROR: " + ex.Message.ToString();
                    }
                }
                else
                {
                    Label1.Text = "Only .mp4 files allowed!";
                }
            }
            else
            {
                Label1.Text = "You have not specified a file.";
            }
        }
    }
}