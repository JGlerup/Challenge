<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Challenge._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>
    <div class="home">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <div class="left">
                        <img class="phone" src="../Images/phone_png.png" />
                    </div>
                    <div class="right">
                        <h3 class="underlined">HOT</h3>
                        <div class="inline marginRight" id="videoDiv1">
                            <label class="videoTitel1">Video 1</label><br />
                            <img id="video1" src="../Images/defaultVideo.png" />
                        </div>
                        <div class="inline marginRight" id="videoDiv2">
                            <label class="videoTitel2">Video 2</label><br />
                            <img id="video2" src="../Images/defaultVideo.png" />
                        </div>
                        <div class="inline marginRight" id="videoDiv3">
                            <label class="videoTitel3">Video 3</label><br />
                            <img id="video3" src="../Images/defaultVideo.png" />
                        </div>
                        <h3 class="underlined">FEATURED</h3>
                        <div class="inline marginRight" id="videoDiv4">
                            <label class="videoTitel1">Video 1</label><br />
                            <img id="video4" src="../Images/defaultVideo.png" />
                        </div>
                        <div class="inline marginRight" id="videoDiv5">
                            <label class="videoTitel2">Video 2</label><br />
                            <img id="video5" src="../Images/defaultVideo.png" />
                        </div>
                        <div class="inline marginRight" id="videoDiv6">
                            <label class="videoTitel3">Video 3</label><br />
                            <img id="video6" src="../Images/defaultVideo.png" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-white">
                <div class="inner-white">
                    <div class="inner-left">
                        <img class="donate" src="Images/cash_receiving-50.png" alt="Donate and give"/>
                        <p class="home-text">
                           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        </p>
                        <img class="group" src="Images/groups-36.png" alt="Group" />
                        <p class="home-text">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto </p>
                    </div>
                    <div class="inner-right">
                        <img class="image" src="Images/image_file-48.png" alt="image" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
