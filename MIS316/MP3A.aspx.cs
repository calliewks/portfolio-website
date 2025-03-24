using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP3A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //look at text in Mini3A to make sure DV updates the contact info
        //update it within the link button ^
        //only update it when you want it visible
        //databind method SHOULD do this! (check after product is updated)
        //To minimize impact, only update when you have to which is when you
        //click to make dv visible = true.
        //need a blank in products when you update supplier, property of ddl
        //"appenddatabound" to be changed
        //clear items in product ddl in selectedindexchanged 
        //add empty item to list after you clear it^
    }

    protected void lbContactDetails_Click(object sender, EventArgs e)
    {
        //method that checks detail view's visibility
        if (dvContactDetails.Visible)
        {
            dvContactDetails.Visible = false;
            lbContactDetails.Text = "Show Contact Details";
        }
        else
        {
            dvContactDetails.Visible = true;
            lbContactDetails.Text = "Hide Contact Details";
            dvContactDetails.DataBind();
        }
    }


    protected void ddlSupplier_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlProduct.Items.Clear();
        ddlProduct.Items.Add("");
        lbContactDetails.Visible = false;
        dvContactDetails.Visible = false;
        lbContactDetails.Text = "Show Contact Details";
    }

    protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbContactDetails.Visible = true;
        fvSupplierandProduct.Visible = true;
        lbContactDetails.Text = "Show Contact Details";
        dvContactDetails.Visible = false;
    }

    protected void fvSupplierandProduct_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}