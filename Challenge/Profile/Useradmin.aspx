<%@ Page Title="Bruger Administration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Useradmin.aspx.cs" Inherits="Challenge.Profile.Useradmin" %>
<asp:Content ID="Useradmin" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="useradmin">
        <div class="inner-useradmin">
            <div class ="useradmin-box">
                <h2 class="useradmin-title"><%: Title %></h2>
                <div class ="useradmin-content">
                    <p> På denne side kan du læse se en liste over alle bruger</p>
                    <br />

                </div>
            </div>
            <table id="table1">
                <tr>
                    <th>Brugernavn</th>
                    <th>Fornavn</th>
                    <th>Efternavn</th>
                </tr>
                <tr>
                    <td>MaikJ2014</td>
                    <td>Maik</td>
                    <td>J</td>
                </tr>
                <tr>
                    <td>SangT2014</td>
                    <td>Sang</td>
                    <td>T</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
