<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="HW6SS.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color: #D2B48C">
    <div class="center">
    
        <div>
            <div class="header">
                <br />
                Wicked Easy Recipes</div>
            Using 5 Ingedients or Less!<br />
            <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="NewRecipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="ContactUs.aspx" style="color: #696969">Contact</a>
        </div>
    
        <br />
    </div>
    <form id="form1" runat="server" class="center">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
        <div style="text-align: left; padding-left: 33.33%;">
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="493px"></asp:TextBox>
        <br />
        <br />
       
         Your message:</div>
        <br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="122px" Width="497px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
</body>
</html>

