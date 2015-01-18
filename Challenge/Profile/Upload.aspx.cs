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

            //DataSet ds = Directory.GetFiles(Server.MapPath("~/Video/"+this.User.Identity.Name+"/"));
            //if (ds.Tables.Count > 0)
            //{
            

            try
            {
                var videoFiles = Directory.EnumerateFiles(Server.MapPath("~/Video/" + this.User.Identity.Name + "/"),"*.mp4");
                literalVideo.Text = "<table><tbody>";
                foreach (string currentFile in videoFiles)
                {
                    //literalVideo.Text += "<tr><th>" + Path.GetFileName(currentFile) + "</th><th><video width='320' height='240' controls><source src='" + Server.MapPath("~/Video/") + this.Page.User.Identity.Name + "\\" + Path.GetFileName(currentFile) + "' type='video/mp4'></video></th>";
                    literalVideo.Text += "<tr><th>" + Path.GetFileName(currentFile) + "</th></tr><tr><th><video width='320' height='240' controls><source src='http://localhost:52326/Video/" + this.Page.User.Identity.Name + "\\" + Path.GetFileName(currentFile) + "' type='video/mp4'></video></th>";
                    
                }
                literalVideo.Text += "</tbody></table>";
                
            }
            catch (Exception er)
            {
                Console.WriteLine(er.Message);
            }
            //}
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