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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdb %>" DeleteCommand="DELETE FROM [News] WHERE [NewsId] = @NewsId" InsertCommand="INSERT INTO [News] ([Title], [ContentText], [CreatedDate]) VALUES (@Title, @ContentText, SYSDATETIME())" SelectCommand="SELECT [Title], [ContentText], [CreatedDate], [NewsId] FROM [News]" UpdateCommand="UPDATE [News] SET [Title] = @Title, [ContentText] = @ContentText, [CreatedDate] = @CreatedDate WHERE [NewsId] = @NewsId">
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
        <asp:GridView ID="NewsGrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="NewsId" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField  HeaderText="NewsId" InsertVisible="False" SortExpression="NewsId">
                    <EditItemTemplate>
                        <asp:Label ID="NewsEdit" runat="server" Text='<%# Eval("NewsId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NewsContent" runat="server" Text='<%# Bind("NewsId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="InsertNews" OnClick="InsertNews_Click" runat="server" ForeColor="Black">Create News</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="EditTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ContentTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="InsertTitle" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ContentText" SortExpression="ContentText">
                    <EditItemTemplate>
                        <asp:TextBox ID="EditContent" runat="server" Height="120px" Rows="50" Text='<%# Bind("ContentText", "{0}") %>' TextMode="MultiLine" Width="430px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="TextContent" runat="server" Text='<%# Bind("ContentText") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="InsertContent" runat="server" Height="120px" Rows="50" TextMode="MultiLine" Width="420px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CreatedDate" InsertVisible="False" SortExpression="CreatedDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="EditDate" runat="server" ReadOnly="True" Text='<%# Bind("CreatedDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ContentDate" runat="server" Text='<%# Bind("CreatedDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#2C3E50" Font-Bold="True" ForeColor="White"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
