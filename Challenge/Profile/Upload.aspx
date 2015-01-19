﻿<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Challenge.Profile.Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="upload">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <h2 class="upload-header"><%: Title %></h2>

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
                            <asp:MenuItem Text="News" NavigateUrl="~/Profile/Newsadmin.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Users" NavigateUrl="~/Profile/Useradmin.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>

                    <div class="left">
                        <div class="upload-vid">
                            <asp:Label ID="Label2" runat="server">Upload a video</asp:Label>
                            <br />
                            <asp:FileUpload ID="VideoUpload" CssClass="pick-file" runat="server" /><br />
                            <br />
                            <asp:Button Text="Upload" ID="Submit" CssClass="submit-vid" runat="server" OnClick="Submit_Click" />&nbsp;<br />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="right">
                        <asp:Label ID="Label3" runat="server">Your uploads</asp:Label>
                        <br />
                        <asp:Literal ID="literalVideo" runat="server"></asp:Literal>
                        <%--<asp:GridView ID="userUploads" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333">
                            <Columns>
                                <asp:BoundField DataField="RowNumber" HeaderText="Nr." />
                                <asp:BoundField DataField="VideoName" HeaderText="Video Name" />
                                <asp:TemplateField HeaderText="Video" >
                                    <ItemTemplate >
                                        <video src="<%# Bind(videoUrl); %>">"
                                    </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                        </asp:GridView>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
