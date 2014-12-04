using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace Challenge.Profile
{
    public partial class Profile : System.Web.UI.Page
    {
        int usrId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            else
            {


                string constr = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                using (con)
                {
                    SqlCommand command = new SqlCommand(
                      "SELECT UserID, UserName, Email, CreatedDate FROM Users WHERE UserName = '" + this.Page.User.Identity.Name + "';",
                      con);
                    con.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            usrId = reader.GetInt32(0);
                            profileMail.Text = reader.GetString(2);
                            joined.Text = reader.GetDateTime(3).ToString("dd-MM-yyyy");
                        }
                    }
                    reader.Close();
                }
                if(File.Exists(Server.MapPath("~/Images/Profiles/")+this.Page.User.Identity.Name+".png"))
                {
                    profileImage.ImageUrl = "~/Images/Profiles/" + this.Page.User.Identity.Name + ".png";
                }
                else
                {
                    profileImage.ImageUrl = "~/Images/defaultVideo.png";
                }
                
            }

            if (!IsPostBack)
            {

                // Declare the query string.
                String queryString = "Select [Time], [What] From [Feed] Where [UserId] = "+usrId;

                // Run the query and bind the resulting DataSet
                // to the GridView control.
                DataSet ds = GetData(queryString);
                if (ds.Tables.Count > 0)
                {
                    UserFeed.DataSource = ds;
                    UserFeed.DataBind();
                }

            }
        }


        DataSet GetData(String queryString)
        {

            // Retrieve the connection string stored in the Web.config file.
            String connectionString = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;

            DataSet ds = new DataSet();

            try
            {
                // Connect to the database and run the query.
                SqlConnection connection = new SqlConnection(connectionString);
                SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);

                // Fill the DataSet.
                adapter.Fill(ds);

            }
            catch (Exception ex)
            {

                // The connection failed. Display an error message.
                //Message.Text = "Unable to connect to the database.";

            }

            return ds;

        }




        protected void uploadProfilePicture(object sender, EventArgs e)
        {
            if (uploadImage.HasFile)
            {
                try
                {
                    //string filename = Path.GetFileName(uploadImage.FileName);
                    uploadImage.SaveAs(Server.MapPath("~/Images/Profiles/") + this.Page.User.Identity.Name + ".png");
                    //uploadImage.SaveAs(Server.MapPath("~/Images/Profiles/") + this.Page.User.Identity.Name+Path.GetExtension(uploadImage.FileName));
                    //StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    
                }
            }
        }
    }
}