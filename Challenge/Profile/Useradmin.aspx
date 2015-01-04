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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdb %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([Username], [Email], [LastLoginDate], [CreatedDate]) VALUES (@Username, @Email, @LastLoginDate, @CreatedDate)" SelectCommand="SELECT [Username], [UserId], [Email], [LastLoginDate], [CreatedDate] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Username] = @Username, [Email] = @Email, [LastLoginDate] = @LastLoginDate, [CreatedDate] = @CreatedDate WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LastLoginDate" Type="DateTime" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LastLoginDate" Type="DateTime" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="Username" SortExpression="Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="Users" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Usercontent" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserId" InsertVisible="False" SortExpression="UserId">
                        <EditItemTemplate>
                            <asp:Label ID="Ids" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Idcontent" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="Emails" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Emailcontent" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastLoginDate" SortExpression="LastLoginDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="Logindates" runat="server" Text='<%# Bind("LastLoginDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Logincontent" runat="server" Text='<%# Bind("LastLoginDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CreatedDate" SortExpression="CreatedDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="Dateofcreate" runat="server" Text='<%# Bind("CreatedDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Createcontent" runat="server" Text='<%# Bind("CreatedDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            
        </div>
    </div>
</asp:Content>
