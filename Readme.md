<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128545292/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1397)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/HtmlEditorSaveHtml/Default.aspx) (VB: [Default.aspx](./VB/HtmlEditorSaveHtml/Default.aspx))
* [Default.aspx.cs](./CS/HtmlEditorSaveHtml/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/HtmlEditorSaveHtml/Default.aspx.vb))
<!-- default file list end -->
# How to use the client PerformDataCallback method and the server CustomDataCallback event
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1397/)**
<!-- run online end -->


<p>This example demonstrates how the CustomDataCallback event can be used to save the ASPxHtmlEditor's content data on the server side without generating a postback and refreshing the entire page. The server CustomDataCallback event is initiated by a callback sent by the editor's client PerformDataCallback method. Saved data is maintained within the Session object and can be restored back to the editor, if required.<br />
So, the CustomDataCallback event allows you to process the editor's data obtained from the client on the server side, and to return the required processing result back to the client side, without rerendering the ASPxHtmlEditor control.</p>

<br/>


