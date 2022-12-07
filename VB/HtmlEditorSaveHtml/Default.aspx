<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="HtmlEditorSaveHtml.Default" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web" TagPrefix="dxlp" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v15.1" Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dxwsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dxhe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Untitled Page</title>

	<script type="text/javascript">
		function OnCustomCommand(htmlEditor, e){
	if(htmlEditor.InCallback())
		return;
	switch(e.commandName){
		 case "load": 
			htmlEditor.PerformDataCallback(e.commandName, LoadContent);
			SetStatusText("Loading&hellip;");
			break;
		 case "save": 
			htmlEditor.PerformDataCallback(e.commandName, SaveCompleted);
			SetStatusText("Saving&hellip;");
			break;
	}

}
function SetStatusText(text){
	lbStatusText.SetText(text);
}
function LoadContent(htmlEditor, result){
	if(result != null)
		htmlEditor.SetHtml(result);
	 SetStatusText("");
}
function SaveCompleted(){
	 SetStatusText("");
}
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<div style="height: 25px;">
				<dxe:ASPxLabel ID="ASPxLabel1" runat="server" ClientInstanceName="lbStatusText" BackColor="Info" />
			</div>
			<dxhe:ASPxHtmlEditor ID="ASPxHtmlEditor1" ClientInstanceName="htmlEditor" runat="server"
				OnCustomDataCallback="ASPxHtmlEditor1_CustomDataCallback">
				<SettingsImageUpload>
					<ValidationSettings AllowedContentTypes="image/jpeg, image/pjpeg, image/gif, image/png, image/x-png">
					</ValidationSettings>
				</SettingsImageUpload>
				<Toolbars>
					<dxhe:HtmlEditorToolbar>
						<Items>
							<dxhe:ToolbarCutButton>
							</dxhe:ToolbarCutButton>
							<dxhe:ToolbarCopyButton>
							</dxhe:ToolbarCopyButton>
							<dxhe:ToolbarPasteButton>
							</dxhe:ToolbarPasteButton>
							<dxhe:ToolbarPasteFromWordButton>
							</dxhe:ToolbarPasteFromWordButton>
							<dxhe:ToolbarUndoButton BeginGroup="True">
							</dxhe:ToolbarUndoButton>
							<dxhe:ToolbarRedoButton>
							</dxhe:ToolbarRedoButton>
							<dxhe:ToolbarRemoveFormatButton BeginGroup="True">
							</dxhe:ToolbarRemoveFormatButton>
							<dxhe:ToolbarSuperscriptButton BeginGroup="True">
							</dxhe:ToolbarSuperscriptButton>
							<dxhe:ToolbarSubscriptButton>
							</dxhe:ToolbarSubscriptButton>
							<dxhe:ToolbarInsertOrderedListButton BeginGroup="True">
							</dxhe:ToolbarInsertOrderedListButton>
							<dxhe:ToolbarInsertUnorderedListButton>
							</dxhe:ToolbarInsertUnorderedListButton>
							<dxhe:ToolbarIndentButton BeginGroup="True">
							</dxhe:ToolbarIndentButton>
							<dxhe:ToolbarOutdentButton>
							</dxhe:ToolbarOutdentButton>
							<dxhe:ToolbarInsertLinkDialogButton BeginGroup="True">
							</dxhe:ToolbarInsertLinkDialogButton>
							<dxhe:ToolbarUnlinkButton>
							</dxhe:ToolbarUnlinkButton>
							<dxhe:ToolbarInsertImageDialogButton>
							</dxhe:ToolbarInsertImageDialogButton>
						</Items>
					</dxhe:HtmlEditorToolbar>
					<dxhe:HtmlEditorToolbar>
						<Items>
							<dxhe:ToolbarBoldButton BeginGroup="True">
							</dxhe:ToolbarBoldButton>
							<dxhe:ToolbarItalicButton>
							</dxhe:ToolbarItalicButton>
							<dxhe:ToolbarUnderlineButton>
							</dxhe:ToolbarUnderlineButton>
							<dxhe:ToolbarStrikethroughButton>
							</dxhe:ToolbarStrikethroughButton>
							<dxhe:ToolbarJustifyLeftButton BeginGroup="True">
							</dxhe:ToolbarJustifyLeftButton>
							<dxhe:ToolbarJustifyCenterButton>
							</dxhe:ToolbarJustifyCenterButton>
							<dxhe:ToolbarJustifyRightButton>
							</dxhe:ToolbarJustifyRightButton>
							<dxhe:ToolbarJustifyFullButton>
							</dxhe:ToolbarJustifyFullButton>
							<dxhe:ToolbarBackColorButton BeginGroup="True">
							</dxhe:ToolbarBackColorButton>
							<dxhe:ToolbarFontColorButton>
							</dxhe:ToolbarFontColorButton>
						</Items>
					</dxhe:HtmlEditorToolbar>
					<dxhe:HtmlEditorToolbar>
						<Items>
							<dxhe:CustomToolbarButton CommandName="load" Text="Load" ToolTip="Loading saved text" BeginGroup="true">
							</dxhe:CustomToolbarButton>
							<dxhe:CustomToolbarButton CommandName="save" Text="Save" ToolTip="Save text" >
							</dxhe:CustomToolbarButton>
						</Items>
					</dxhe:HtmlEditorToolbar>
				</Toolbars>
				<ClientSideEvents CustomCommand="OnCustomCommand"></ClientSideEvents>
			</dxhe:ASPxHtmlEditor>
			<br />
			<br />
		</div>
	</form>
</body>
</html>