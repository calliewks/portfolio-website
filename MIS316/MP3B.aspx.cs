using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP3B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cbCustomerDetails_Checked(object sender, EventArgs e)
    {
        if (cbCustomerDetails.Checked)
        {
            dvCustomerDetails.Visible = true;
            dvCustomerDetails.DataBind();
        }
        else
        {
            dvCustomerDetails.Visible = false;
        }
    }

    protected void btnLoadOrders_Click(object sender, EventArgs e)
    {
        pnlOne.Visible = false;
        pnlTwo.Visible = true;
        gvLoadedOrder.DataBind();
        if (gvLoadedOrder.Rows.Count == 0)
        {
            lblNoOrders.Text = ddlCustomers.SelectedItem.Text + " has not placed any orders yet.";
        }
        else
        {
            lblNoOrders.Text = "";
        }
    }

    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        pnlTwo.Visible = false;
        pnlOne.Visible = true;
        ddlCustomers.SelectedIndex = 0;
        cbCustomerDetails.Checked = false;
        dvCustomerDetails.Visible = false;
    }


    protected void gvLoadedOrder_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        pnlTwo.Visible = false;
        pnlThree.Visible = true;
    }

    protected void btnBackAgain_Click(object sender, EventArgs e)
    {
        pnlThree.Visible = false;
        pnlTwo.Visible = true;
        cbCustomerDetails.Checked = false;
        dvCustomerDetails.Visible = false;
        gvLoadedOrder.SelectedIndex = -1;
        gvProductList.SelectedIndex = -1;
        fvSelectedSupplier.DataBind();
    }
}