using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
	protected void Page_Load(object sender, EventArgs e) {

	}
	protected void ASPxSplitter1_ClientLayout(object sender, DevExpress.Web.ASPxClasses.ASPxClientLayoutArgs e) {
		if (e.LayoutMode == DevExpress.Web.ASPxClasses.ClientLayoutMode.Saving) {
			Session["layoutData"] = e.LayoutData;
		}
		else if (Session["layoutData"] != null) {
			e.LayoutData = (string)Session["layoutData"];
		}
	}
}
