<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Challenge.Profile.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>.</h2>

    <div class="home">
        <div class="content-content">
            <div class="blue">
                <div class="content-blue">
                    <div class="left">
                        <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser"></asp:Login>
                        <br />
                        <asp:LoginStatus ID="LoginStatus1" runat="server" />
                    </div>
                    <div class="right">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <th colspan="3">Registration
                                </th>
                            </tr>
                            <tr>
                                <td>Username
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUsername" runat="server" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Password
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                                        runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Password
                                </td>
                                <td>
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
                                </td>
                                <td>
                                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                                        ControlToValidate="txtConfirmPassword" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Email
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                                        ControlToValidate="txtEmail" runat="server" />
                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button Text="Submit" runat="server" OnClick="RegisterUser" />
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
