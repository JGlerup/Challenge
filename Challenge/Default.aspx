<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Challenge._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>

    <div class="content-content">
        <div class="blue">
            <div class="content-blue">
                <div class="left">
                    <img class="phone" src="../Images/phone_png.png" />
                </div>
                <div class="right">
                    <h2 class="underlined">HOT</h2>
                    <div class="inline marginRight" id="videoDiv1">
                        <label id="videoTitel1">Video 1</label><br />
                        <img id="video1" src="../Images/defaultVideo.png" />
                        <p id="videoDesription1">Short video description1</p>
                    </div>
                    <div class="inline marginRight" id="videoDiv2">
                        <label id="videoTitel2">Video 2</label><br />
                        <img id="video2" src="../Images/defaultVideo.png" />
                        <p id="videoDesription2">Short video description2</p>
                    </div>
                    <div class="inline marginRight" id="videoDiv3">
                        <label id="videoTitel3">Video 3</label><br />
                        <img id="video3" src="../Images/defaultVideo.png" />
                        <p id="videoDesription3">Short video description3</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-white">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
