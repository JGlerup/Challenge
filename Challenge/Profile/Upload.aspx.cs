using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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

        int usrId;

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
                        VideoUpload.SaveAs(Server.MapPath("~/Video/") + this.Page.User.Identity.Name + "/" +
                           VideoUpload.FileName);
                        Label1.Text = "File name: " +
                            VideoUpload.PostedFile.FileName + "<br>er blevet uploadet";

                        string constr = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
                        SqlConnection con = new SqlConnection(constr);
                        using (con)
                        {

                            SqlCommand insertCommand = new SqlCommand(
                              "INSERT INTO [Feed] ( [UserId], [Time], [What]) SELECT [UserID], SYSDATETIME(), '" + this.Page.User.Identity.Name + " uploaded " + VideoUpload.PostedFile.FileName + "' FROM [Users] Where [UserName] = '" + this.Page.User.Identity.Name + "';",
                              con);

                            con.Open();

                            insertCommand.ExecuteNonQuery();
                            con.Close();

                        }
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