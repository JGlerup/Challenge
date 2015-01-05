<%@ Page Title="Mest Populære" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostPopular.aspx.cs" Inherits="Challenge.Challenges.Most_popular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <ul class="challenge-menu">
         <li><a style="font-weight: bold;">Mest Populære</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/MostRecent">Nyeste</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/ChallengesInCity">Udfordringer i din by</a></li>
         <li><a>|</a></li>
         <li><a href="/Challenges/Browse">Browse</a></li>
      </ul>

</asp:Content>
