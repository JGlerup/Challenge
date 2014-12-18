<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Challenge.Profile.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="profile">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <h2 class="profile-header"><%: Title %></h2>

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
                        <div style="border: 1px solid #888;">
                            <asp:LoginName ID="LoginName1" runat="server" />
                            <br />
                            <asp:Image ID="profileImage" runat="server" /><br />
                            <asp:FileUpload ID="uploadImage" CssClass="hiddenUpload" runat="server" /><br />
                            <input type="button" ID="uploadImageLink" OnClick="document.getElementById('MainContent_uploadImage').click();document.getElementById('MainContent_doSubmit').style.display = 'block';" value="Change your profile picture" />
                            <br />
                            <p class="profile-text">Mail:
                            <asp:Literal ID="profileMail" runat="server" /><br />
                            Joined:
                            <asp:Literal ID="joined" runat="server" /><br /></p>
                            <asp:LinkButton runat="server" CssClass="hiddenUpload" ID="doSubmit" Text="Ok" OnClick="uploadProfilePicture"></asp:LinkButton>
                        </div>
                    </div>
                    <div class="right">
                        <div style="border: 1px solid #888;">
                            <asp:GridView ID="UserFeed" AutoGenerateColumns="true" runat="server">
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
