<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Challenge.Profile.Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="home">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <h2><%: Title %>.</h2>

                    <asp:Menu ID="navMenu" runat="server" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Profile" NavigateUrl="~/Profile/Profile.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Uploads" NavigateUrl="~/Profile/Upload.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Donations"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Achievements" NavigateUrl="~/Profile/Achievements.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Settings"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="News"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Users"></asp:MenuItem>
                        </Items>
                    </asp:Menu>

                    <div class="left">
                        <div class="upload">
                            <asp:Label ID="Label2" runat="server">Upload a video</asp:Label>
                            <br />
                            <asp:FileUpload ID="VideoUpload" runat="server" /><br />
                            <br />
                            <asp:Button Text="Upload" ID="Submit" runat="server" OnClick="Submit_Click" />&nbsp;<br />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="right">
                        <asp:Label ID="Label3" runat="server">Your uploads</asp:Label>
                            <br />
                        <asp:GridView ID="userUploads" AutoGenerateColumns="true" runat="server">
                            </asp:GridView>
                        </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
