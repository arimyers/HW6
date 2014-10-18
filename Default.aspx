<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #D2B48C">
    <div class="auto-style2">
    
        <div class="auto-style2">
            <span class="auto-style1"><strong>Wicked Easy Recipes</strong></span><br />
            Using 5 Ingedients or Less!<br />
            <br /><a href="Default.aspx">Home</a>&nbsp; |&nbsp; <a href="NewRecipe.aspx">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; <a href="ContactUs.aspx">Contact</a>
        </div>
        <asp:SqlDataSource ID="sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:db_resume %>" SelectCommand="SELECT * FROM [recipe]" DeleteCommand="DELETE FROM [recipe] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [recipe] ([recipe_name], [submitted_by], [ingred1], [ingred2], [ingred3], [ingred4], [ingred5], [prep], [notes]) VALUES (@recipe_name, @submitted_by, @ingred1, @ingred2, @ingred3, @ingred4, @ingred5, @prep, @notes)" UpdateCommand="UPDATE [recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingred1] = @ingred1, [ingred2] = @ingred2, [ingred3] = @ingred3, [ingred4] = @ingred4, [ingred5] = @ingred5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
    
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sql_recipe" HorizontalAlign="Center" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                <asp:CommandField ShowSelectButton="True">
                <ItemStyle ForeColor="Black" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BorderStyle="Solid" BackColor="#FFFF99" ForeColor="DimGray" />
            <RowStyle BackColor="LightCoral" ForeColor="White" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
