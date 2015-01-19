<%@ Page Title="Nyeste" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostRecent.aspx.cs" Inherits="Challenge.Challenges.MostRecent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="most-recent">
        <div class="content-content">
            <ul class="challenge-menu">
                <li><a href="/Challenges/MostPopular">Mest Populære</a></li>
                <li><a>|</a></li>
                <li><a style="font-weight: bold;">Nyeste</a></li>
                <li><a>|</a></li>
                <li><a href="/Challenges/ChallengesInCity">Udfordringer i din by</a></li>
                <li><a>|</a></li>
                <li><a href="/Challenges/Browse">Browse</a></li>
            </ul>
            <div class="blue">
                <div class="content">


                    <div class="most-recent">
                        <div class="Challenge-Video">
                            <asp:Literal ID="literalVideo" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
