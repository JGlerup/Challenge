<%@ Page Title="Support" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="Challenge.Support.Support" %>
<asp:Content ID="SupportContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="support">
        <div class="inner-support">
            <div class ="support-box">
                <h2 class="support-title"><%: Title %></h2>
                <div class ="support-content">
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
