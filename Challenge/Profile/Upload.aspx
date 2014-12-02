<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Challenge.Profile.Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script runat="server">
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
    </script>

    <div>
        <asp:FileUpload ID="VideoUpload" runat="server" /><br />
        <br />
        <asp:Button CssClass="SubmitButton" ID="Submit" runat="server" OnClick="Submit_Click"
            Text="Upload File" />&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>
