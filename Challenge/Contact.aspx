<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Challenge.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="contact">
        <div class="content-content">
            <div class="blue">
                <div class="content">
                    <div class="inner-contact">
                        <div class="contact-box">
                            <h2 class="contact-titel"><%: Title %></h2>
                            <div class="contact-left">
                                <p>
                                    <img class="speach" src="Images/speech_bubble-50.png" alt="Contact" />
                                    You can contact us by mail:
                    <script type="text/javascript">
                        //<![CDATA[
                        var x = "function f(x){var i,o=\"\",l=x.length;for(i=l-1;i>=0;i--) {try{o+=x.c" +
                        "harAt(i);}catch(e){}}return o;}f(\")\\\"function f(x,y){var i,o=\\\"\\\\\\\"" +
                        "\\\\,l=x.length;for(i=0;i<l;i++){if(i>(46+y))y*=2;y%=127;o+=String.fromChar" +
                        "Code(x.charCodeAt(i)^(y++));}return o;}f(\\\"\\\\J@SD_VZA\\\\\\\\030@JPN^PS" +
                        "\\\\\\\\026\\\\\\\\035| b+6  z\\\\\\\\024k'*%!: j\\\\\\\\\\\"\\\\'#$:$#\\\\" +
                        "\\\\030:2:01;1\\\\\\\\007\\\\\\\\004L\\\\\\\\000\\\\\\\\013\\\\\\\\010Y\\\\" +
                        "\\\\024\\\\\\\\035\\\\\\\\013\\\\\\\\000\\\\\\\\016\\\\\\\\017\\\\\\\\031S<" +
                        "\\\\\\\\005\\\\\\\\001\\\\\\\\002\\\\\\\\034\\\\\\\\006\\\\\\\\001V\\\\\\\\" +
                        "022U\\\\\\\\024\\\\\\\\033\\\\\\\\022\\\\\\\\020!\\\\\\\\\\\\\\\\ vozr[\\\\" +
                        "\\\\002\\\\\\\\034c\\\\\\\\007n)$/+h<9k*\\\\\\\\\\\"\\\\<o#$\\\\\\\\\\\"\\\\" +
                        "#;'\\\\\\\\\\\"\\\\v\\\\\\\\004{d()-.0\\\\\\\\022\\\\\\\\025\\\\\\\\\\\"\\\\" +
                        "\\\\\\\\000\\\\\\\\014\\\\\\\\004\\\\\\\\n\\\\\\\\013\\\\\\\\r\\\\\\\\007\\" +
                        "\\\\\\r\\\\\\\\016B\\\\\\\\016\\\\\\\\001\\\\\\\\002L^\\\\\\\\023MV\\\\\\\\" +
                        "\\\\\\\\MGC\\\"\\\\,46)\\\"(f};)lo,0(rtsbus.o nruter};)i(tArahc.x=+o{)--i;0" +
                        "=>i;1-l=i(rof}}{)e(hctac};l=+l;x=+x{yrt{)84=!)31/l(tAedoCrahc.x(elihw;lo=l," +
                        "htgnel.x=lo,\\\"\\\"=o,i rav{)x(f noitcnuf\")";
                        while (x = eval(x));
                        //]]>
                    </script>
                                    .
                                </p>
                                <p>
                                    Or via the contact form to the right.
                                </p>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor elit quis tristique aliquet. Nam egestas, lacus vel semper faucibus, sapien sapien aliquet turpis, non tempor odio velit et lacus. Aenean id felis nunc. Aliquam at suscipit enim, vitae cursus augue. 
                                </p>
                            </div>
                            <div class="contact-right">
                                <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
                                    <p>
                                        Please Fill the Following to Send Mail.
                                    </p>
                                    <p class="contact-labels">
                                        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="YourName" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourName" runat="server" CssClass="Your_Name" />
                                    </p>
                                    <p class="contact-labels">
                                        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourEmail" runat="server" CssClass="Your_Email" />
                                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                                            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                            ValidationGroup="save" />
                                    </p>
                                    <p class="contact-labels">
                                        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="YourSubject" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourSubject" runat="server" CssClass="Your_Subject" />
                                    </p>
                                    <p class="contact-labels">
                                        Your Question:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="Comments" runat="server" CssClass="Message"
                                            TextMode="MultiLine" Rows="5" Width="250px" />
                                    </p>
                                    <asp:Button ID="btnSubmit" CssClass="contact-btn" runat="server" Text="Send"
                                        OnClick="Button1_Click" ValidationGroup="save" />
                                </asp:Panel>
                                <p>
                                    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
