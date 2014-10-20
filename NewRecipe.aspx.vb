
Partial Class NewRecipe
    Inherits System.Web.UI.Page


    Protected Sub dvNewRecipe_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles dvNewRecipe.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        dvNewRecipe.Focus()
    End Sub
End Class
