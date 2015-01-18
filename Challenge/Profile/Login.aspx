<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Challenge.Profile.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login">
        <div class="content-content">
            <div class="blue">
                <div class="content">
                    <div class="left">
                        <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser">
                            <LayoutTemplate>
                                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0">
                                                <tr>
                                                    <td align="center" class="login-box-header" colspan="2"><h2>Login</h2></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="UserName" CssClass="login-username-box" placeholder="Username" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="Password" CssClass="login-password-box" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" CssClass="login-check-box" runat="server" Text="Remember me" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color:Red;">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" colspan="2">
                                                        <asp:Button ID="LoginButton" CssClass="login-btn" runat="server" CommandName="Login" Text="Sign in" ValidationGroup="Login1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:Login>
                        <br />
                    </div>
                    <div class="right">
                        <table border="0" class="regi" cellpadding="0" cellspacing="0">
                            <tr>
                                <th colspan="3" class="regi-header"><h2>Registration</h2>
                                </th>
                            </tr>
                            <tr>
                                <td><p class="regi-input-text">Username<asp:RequiredFieldValidator ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                                        runat="server" /></p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUsername" placeholder="Choose username" CssClass="regi-username" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td><p class="regi-input-text">Password<asp:RequiredFieldValidator ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPassword"
                                        runat="server" /></p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" placeholder="Between 6-10 letters" CssClass="regi-password" runat="server" TextMode="Password" />
                                </td>
                            </tr>
                            <tr>
                                <td><p class="regi-input-text">Confirm Password</p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtConfirmPassword" placeholder="Repeat chosen password" CssClass="regi-password-confirm" runat="server" TextMode="Password" />
                                </td>
                                <td>
                                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                                        ControlToValidate="txtConfirmPassword" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td><p class="regi-input-text">E-mail<asp:RequiredFieldValidator ErrorMessage="*" Display="Dynamic" ForeColor="Red"
                                        ControlToValidate="txtEmail" runat="server" /></p>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" placeholder="Use your personal e-mail" CssClass="regi-mail" runat="server" />
                                </td>
                                <td>
                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button Text="Submit" CssClass="submit-btn" runat="server" OnClick="RegisterUser" />
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>


                </div>
            </div>
        </div>
    </div>



</asp:Content>
