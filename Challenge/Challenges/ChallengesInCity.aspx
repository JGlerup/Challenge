<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChallengesInCity.aspx.cs" Inherits="Challenge.Challenges.ChallengesInCity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <ul class="challenge-menu">
         <li><a href="/Challenges/MostPopular">Mest Populære</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/MostRecent">Nyeste</a></li>
         <li><a>|</a></li>
         <li><a style="font-weight: bold;">Udfordringer i din by</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/Browse">Browse</a></li>
      </ul>

</asp:Content>
