<%@ Page Title="Achievements" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Achievements.aspx.cs" Inherits="Challenge.Profile.Achievements" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div class="home">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <asp:SiteMapPath runat="server" /><br />
                    <asp:SiteMapDataSource id="nav1" runat="server" />
                    <asp:Menu runat="server" DataSourceId="nav1" StaticDisplayLevels="3" Orientation="Horizontal" StaticSelectedStyle-BorderStyle="Dashed" />

                    <div class="left">

                        </div>
                    <div class="right">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Content>
