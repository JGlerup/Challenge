<%@ Page Title="Administration af nyheder" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Newsadmin.aspx.cs" Inherits="Challenge.Profile.Newsadmin" %>
<asp:Content ID="Newsadmin" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="newsadmin">
        <div class="inner-newsadmin">
            <div class ="newsadmin-box">
                <h2 class="newsadmin-title"><%: Title %></h2>
                <div class ="newsadmin-content">
                    <p> På denne side kan du se en oversigt af nyhederne</p>
                    <br />
                </div>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdb %>" DeleteCommand="DELETE FROM [News] WHERE [NewsId] = @NewsId" InsertCommand="INSERT INTO [News] ([Title], [ContentText], [CreatedDate]) VALUES (@Title, @ContentText, @CreatedDate)" SelectCommand="SELECT [Title], [ContentText], [CreatedDate], [NewsId] FROM [News]" UpdateCommand="UPDATE [News] SET [Title] = @Title, [ContentText] = @ContentText, [CreatedDate] = @CreatedDate WHERE [NewsId] = @NewsId">
                <DeleteParameters>
                    <asp:Parameter Name="NewsId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="ContentText" Type="String" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="ContentText" Type="String" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                    <asp:Parameter Name="NewsId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NewsId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="NewsId" InsertVisible="False" SortExpression="NewsId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NewsId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("NewsId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="InsertNews" runat="server">Create News</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ContentText" SortExpression="ContentText">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="120px" Rows="50" Text='<%# Bind("ContentText", "{0}") %>' TextMode="MultiLine" Width="430px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ContentText") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtContent" runat="server" Height="120px" Rows="50" TextMode="MultiLine" Width="420px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CreatedDate" InsertVisible="False" SortExpression="CreatedDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Text='<%# Bind("CreatedDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CreatedDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
