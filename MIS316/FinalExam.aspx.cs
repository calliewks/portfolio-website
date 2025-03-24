using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_FinalExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLoadRecords_Click(object sender, EventArgs e)
    {
        pnlChooseSupplier.Visible = false;
        pnlTwo.Visible = true;
    }

    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        pnlChooseSupplier.Visible = true;
        pnlTwo.Visible = false;
        ddlChooseASupplier.DataBind();
        ddlChooseASupplier.SelectedIndex = 0;
        gvProducts.SelectedIndex = -1;
    }
}