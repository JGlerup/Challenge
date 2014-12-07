<%@ Page Title="Rules" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rules.aspx.cs" Inherits="Challenge.Support.Rules" %>
<asp:Content ID="RulesContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="rules">
        <div class="inner-rules">
            <div class ="rules-box">
                <h2 class="rules-title"><%: Title %></h2>
                <div class ="rules-content">
                    <p> På denne side kan du læse om hvilke regler der er sat op i forbindelse med brug af dette produkt</p>
                    <br />
                    <p>
                        - Dette er plads til den første regel
                    </p>
                    <p>
                        - Dette er plads til den anden regel
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
