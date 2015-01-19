<%@ Page Title="Support" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="Challenge.Support.Support" %>
<asp:Content ID="SupportContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="support">
        <div class="inner-support">   
            <div class ="support-box">
                <asp:Menu ID="naviMenu" runat="server" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Support" NavigateUrl="~/Support/Support.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="FAQ" NavigateUrl="~/Support/FAQ.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Guidelines" NavigateUrl="~/Support/Guideline.aspx"></asp:MenuItem>
                            <asp:MenuItem SeparatorImageUrl="../Images/separatorline.png"></asp:MenuItem>
                            <asp:MenuItem Text="Rules" NavigateUrl="~/Support/Rules.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                <h2 class="support-title"><%: Title %></h2>
                <div class ="support-content">
                    <p> På denne side kan du læse om hvilke former for support vi har i forbindelse med dette produkt</p>
                    <br />
                    
                    <h4>FAQ</h4>
                    <p>
                        - Dette er til at beskrive hvad dette er og hvad man kan forvente at finde der
                    </p>
                    <h4>Guidelines</h4>
                    <p>
                        - Dette er til at beskrive hvad dette er og hvad man kan forvente at finde der
                    </p>
                    <h4>Rules</h4>
                    <p>
                        - Dette er til at beskrive hvad dette er og hvad man kan forvente at finde der
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
