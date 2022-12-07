Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Namespace HtmlEditorSaveHtml
	Partial Public Class [Default]
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub ASPxHtmlEditor1_CustomDataCallback(ByVal sender As Object, ByVal e As DevExpress.Web.CustomDataCallbackEventArgs)
			Select Case e.Parameter
				Case "save"
					SetHtml()
				Case "load"
					e.Result = GetHtml()
			End Select
		End Sub

		Private Function GetHtml() As String
			Dim html As Object = Session("html")
			If html Is Nothing Then
				Return "There isn`t saved document"
			Else
				Return html.ToString()
			End If
		End Function

		Private Sub SetHtml()
			Session("html") = ASPxHtmlEditor1.Html
		End Sub
	End Class
End Namespace
