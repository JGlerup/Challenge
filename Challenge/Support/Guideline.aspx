<%@ Page Title="Guidelines" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Guideline.aspx.cs" Inherits="Challenge.Support.Guideline" %>
<asp:Content ID="GuideContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="guide">
        <div class="inner-guide">
            <div class ="guide-box">
                <h2 class="guide-title"><%: Title %></h2>
                <div class ="guide-content">
                    <p> På denne side kan du læse om diverse guidelines som er lavet til dette produkt, hvilket både kan være bruger som udviklerne</p>
                    <br />

                </div>
            </div>
            <br />
            <table id="table1">
                <tr>
                    <th>Navn</th>
                    <th>Emne</th>		
                    <th>Udgiver</th>
                </tr>
                <tr>
                    <td>At donere</td>
                    <td>Basic</td>		
                    <td>MaikJ2014</td>
                </tr>
                <tr>
                    <td>Deltag i en udfordring</td>
                    <td>Basic</td>		
                    <td>SangT2014</td>
                </tr>
                </table>
        </div>
    </div>
</asp:Content>
