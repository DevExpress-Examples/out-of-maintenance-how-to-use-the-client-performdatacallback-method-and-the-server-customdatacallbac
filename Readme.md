# How to use the client PerformDataCallback method and the server CustomDataCallback event


<p>This example demonstrates how the CustomDataCallback event can be used to save the ASPxHtmlEditor's content data on the server side without generating a postback and refreshing the entire page. The server CustomDataCallback event is initiated by a callback sent by the editor's client PerformDataCallback method. Saved data is maintained within the Session object and can be restored back to the editor, if required.<br />
So, the CustomDataCallback event allows you to process the editor's data obtained from the client on the server side, and to return the required processing result back to the client side, without rerendering the ASPxHtmlEditor control.</p>

<br/>


