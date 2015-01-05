<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="Challenge.Challenges.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <ul class="challenge-menu">
         <li><a href="/Challenges/MostPopular">Mest Populære</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/MostRecent">Nyeste</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/ChallengesInCity">Udfordringer i din by</a></li>
         <li><a>|</a></li>
         <li><a style="font-weight: bold;">Browse</a></li>
      </ul>

</asp:Content>
