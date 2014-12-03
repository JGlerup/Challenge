<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Challenge.Profile.Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="home">
        <div class="content-content">
            <div class="blue" style="background-color:white;">
                <div class="content-blue">
                    <div class="left">
                        <div class="upload">
                            <asp:FileUpload ID="VideoUpload" runat="server" /><br />
                            <br />
                            <asp:Button Text="Upload" ID="Submit" runat="server" OnClick="Submit_Click" />&nbsp;<br />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
