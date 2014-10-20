<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="HW6SS.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color: #D2B48C">
    <form id="form3" runat="server">
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
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_resume %>" SelectCommand="SELECT * FROM [recipe] WHERE ([recipeID] = @recipeID)" DeleteCommand="DELETE FROM [recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [recipe] ([recipe_name], [submitted_by], [ingred1], [ingred2], [ingred3], [ingred4], [ingred5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ingred1, @ingred2, @ingred3, @ingred4, @ingred5, @prep, @notes)" UpdateCommand="UPDATE [recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingred1] = @ingred1, [ingred2] = @ingred2, [ingred3] = @ingred3, [ingred4] = @ingred4, [ingred5] = @ingred5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
    
        <span class="delRecipe"><asp:Label ID="lbDel" runat="server"></asp:Label></span>
        <br />
    
        <asp:DetailsView ID="dvRecipe" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="recipeID" DataSourceID="sql_recipe" ForeColor="#333333" Height="105px" HorizontalAlign="Center" Width="373px">
            
            <CommandRowStyle BackColor="#FFFF99" Font-Bold="True" />
            <EditRowStyle BackColor="LightCoral" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name*:" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By*:" SortExpression="submitted_by" />
                <asp:BoundField DataField="ingred1" HeaderText="Ingredient 1*:" SortExpression="ingred1" />
                <asp:BoundField DataField="ingred2" HeaderText="Ingredient 2:" SortExpression="ingred2" />
                <asp:BoundField DataField="ingred3" HeaderText="Ingredient 3:" SortExpression="ingred3" />
                <asp:BoundField DataField="ingred4" HeaderText="Ingredient 4:" SortExpression="ingred4" />
                <asp:BoundField DataField="ingred5" HeaderText="Ingredient 5:" SortExpression="ingred5" />
                <asp:BoundField DataField="prep" HeaderText="Preperation:" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes:" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#FFFF99" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FFFF99" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFFF99" ForeColor="LightCoral" HorizontalAlign="Center" />
            <RowStyle BackColor="LightCoral" />
        </asp:DetailsView>
        <br />
        <div class="footer" >&#169 2014 Software Development & Design<br />
        </div>
    </form>
</body>
</html>
