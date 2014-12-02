using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Challenge.Profile
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            if (VideoUpload.HasFile)
            {
                string fileExt =
                   System.IO.Path.GetExtension(VideoUpload.FileName);

                if (fileExt == ".mp3")
                {
                    try
                    {
                        VideoUpload.SaveAs("C:\\Uploads\\" +
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
                    Label1.Text = "Only .mp3 files allowed!";
                }
            }
            else
            {
                Label1.Text = "You have not specified a file.";
            }
        }
    }
}