<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="HW6SS.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color: #D2B48C">
    <form id="form1" runat="server">
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
        <asp:SqlDataSource ID="sql_main" runat="server" ConnectionString="<%$ ConnectionStrings:db_resume %>" SelectCommand="SELECT * FROM [recipe]" DeleteCommand="DELETE FROM [recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [recipe] ([recipe_name], [submitted_by], [ingred1], [ingred2], [ingred3], [ingred4], [ingred5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ingred1, @ingred2, @ingred3, @ingred4, @ingred5, @prep, @notes)" UpdateCommand="UPDATE [recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingred1] = @ingred1, [ingred2] = @ingred2, [ingred3] = @ingred3, [ingred4] = @ingred4, [ingred5] = @ingred5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingred1" Type="String" />
                <asp:Parameter Name="ingred2" Type="String" />
                <asp:Parameter Name="ingred3" Type="String" />
                <asp:Parameter Name="ingred4" Type="String" />
                <asp:Parameter Name="ingred5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingred1" Type="String" />
                <asp:Parameter Name="ingred2" Type="String" />
                <asp:Parameter Name="ingred3" Type="String" />
                <asp:Parameter Name="ingred4" Type="String" />
                <asp:Parameter Name="ingred5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:GridView ID="gvMain" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sql_main" HorizontalAlign="Center" style="text-align: center" Width="617px">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="Recipe.aspx?recipeID={0}" Text="Select">
                <ControlStyle ForeColor="White" />
                </asp:HyperLinkField>
            </Columns>
            <HeaderStyle BorderStyle="Solid" BackColor="#FFFF99" ForeColor="DimGray" />
            <RowStyle BackColor="LightCoral" ForeColor="White" />
        </asp:GridView>
        <br />
        <div class="footer" >&#169 2014 Software Development & Design<br />
        </div>
    </form>
</body>
</html>
