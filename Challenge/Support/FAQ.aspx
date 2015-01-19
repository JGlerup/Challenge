<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Challenge.Support.FAQ" %>
<asp:Content ID="FAQContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // choose text for the show/hide link - can contain HTML (e.g. an image)
            var showText = 'Svaret';
            var hideText = 'Minimeret';
            // initialise the visibility check
            var is_visible = false;
            // append show/hide links to the element directly preceding the element with a class of "toggle"
            $('.toggle').prev('.moree').append('<a href="#" class="toggleLink">' + showText + '</a>');
            // hide all of the elements with a class of 'toggle'
            $('.toggle').hide();
            // capture clicks on the toggle links
            $('a.toggleLink').click(function () {
                // switch visibility
                // change the link depending on whether the element is shown or hidden
                $(this).html(($(this).parent().next('.toggle').is(":visible")) ? showText : hideText);
                //$(this).html( ($(this).html() == hideText) ? showText : hideText);
                // toggle the display - uncomment the next line for a basic "accordion" style
                //$('.toggle').hide();$('a.toggleLink').html(showText);
                $(this).parent().next('.toggle').toggle('slow');
                // return false so any link destination is not followed
                return false;
                //Koden fundet her: http://stackoverflow.com/questions/12016721/show-hide-multiple-elements-independently
            });
        });
    </script>

    <div class ="faq">
        <div class="inner-faq">
            <div class ="faq-box">
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
                <h2 class="faq-title"><%: Title %></h2>
                <div class ="faq-content">
                    <br/> På denne side kan du læse om hvilke "frequent asked questions" vi har i forbindelse med brug af dette produkt<br/><br />
                    
                    <h4>Her er det første spørgsmål</h4>
                    <div  class="moree"></div>
                    <div  class="toggle">
                        <p>Her er svaret på dette spørgsmål</p><br />
                    </div>
                    
                    <h4>Her er det andet spørgsmål</h4>
                    <div  class="moree"></div>
                    <div  class="toggle">
                        <p>Her er svaret på dette spørgsmål</p><br />
                    </div>

                    <h4>Her er det tredje spørgsmål</h4>
                    <div  class="moree"></div>
                    <div  class="toggle">
                        <p>Her er svaret på dette spørgsmål</p><br />
                    </div>
                    <br />

                </div>
            </div>
        </div>
    </div>

</asp:Content>