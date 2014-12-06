﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.Security;
using System.IO;

namespace Challenge.Profile
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.\\nUser Id: " + userId.ToString();
                        SendActivationEmail(userId);
                        Directory.CreateDirectory(Server.MapPath("~/Video/") + txtUsername.Text.Trim() + "/");

                        string constr1 = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
                        SqlConnection con1 = new SqlConnection(constr1);
                        using (con1)
                        {

                            SqlCommand insertCommand = new SqlCommand(
                              "INSERT INTO [Feed] ( [UserId], [Time], [What]) SELECT [UserID], SYSDATETIME(), '" + txtUsername.Text.Trim() + ": User created' FROM [Users] Where [UserName] = '" + txtUsername.Text.Trim() + "';",
                              con1);

                            con1.Open();

                            insertCommand.ExecuteNonQuery();
                            con1.Close();

                        }
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        private void SendActivationEmail(int userId)
        {
            string constr = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
            string activationCode = Guid.NewGuid().ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@UserId, @ActivationCode)"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@UserId", userId);
                        cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            using (MailMessage mm = new MailMessage())
            {
                mm.From = new MailAddress("glerup9@gmail.com");
                mm.To.Add(txtEmail.Text);
                mm.Subject = "Account Activation";
                string body = "Hello " + txtUsername.Text.Trim() + ",";
                body += "<br /><br />Please click the following link to activate your account";
                body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Login", "Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                body += "<br /><br />Thanks";                
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("glerup9@gmail.com", "W122pass");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse("587");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(mm);
            }
        }

        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["aspnetdb"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "Account has not been activated.";
                        break;
                    default:
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        break;
                }
            }
        }
    }
}