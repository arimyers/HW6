
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub dvRecipe_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles dvRecipe.ItemDeleted
        Dim delRecipe As String = e.Values("recipe_name").ToString
        lbDel.Text = delRecipe & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub dvRecipe_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dvRecipe.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub


End Class
