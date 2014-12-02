<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Challenge.Profile.Upload" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="blue">
                <div class="content-blue">
            <div class="upload">
                <asp:FileUpload ID="VideoUpload" runat="server" /><br />
                <br />
                <asp:Button Text="Upload" ID="Submit" runat="server" OnClick="Submit_Click" />&nbsp;<br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
