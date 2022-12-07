Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxSplitter1_ClientLayout(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxClientLayoutArgs)
		If e.LayoutMode = DevExpress.Web.ClientLayoutMode.Saving Then
			Session("layoutData") = e.LayoutData
		ElseIf Session("layoutData") IsNot Nothing Then
			e.LayoutData = CStr(Session("layoutData"))
		End If
	End Sub
End Class
