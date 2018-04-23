using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace HtmlEditorSaveHtml {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ASPxHtmlEditor1_CustomDataCallback(object sender, DevExpress.Web.ASPxClasses.CustomDataCallbackEventArgs e) {
            switch(e.Parameter) {
                case "save":
                    SetHtml();
                    break;
                case "load":
                    e.Result = GetHtml();
                    break;
            }
        }

        private string GetHtml() {
            object html = Session["html"];
            if(html == null)
                return "There isn`t saved document";
            else
                return html.ToString();
        }

        private void SetHtml() {
            Session["html"] = ASPxHtmlEditor1.Html;
        }
    }
}
