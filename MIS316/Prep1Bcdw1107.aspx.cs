using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1Bcdw1107 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNameContinue_Click(object sender, EventArgs e)
    {
        // if the user selected no siblings, hide the name panel and
        //output a message about being an only child
        if (rbSiblingsNo.Checked == true)
        {
            pnlName.Visible = false;
            lblMessage.Text = txtName.Text + " is an only child.";
        }
        else if (rbSiblingsYes.Checked == true)
        {
            //otherwise, hide the name panel and show the number of siblings panel
            pnlName.Visible = false;
            pnlNumberOfSiblings.Visible = true;
        }
    }

    protected void btnSiblingsContinue_Click(object sender, EventArgs e)
    {
        //  hide the number of siblings panel
        //  output a message saying how many siblings the person has
        pnlNumberOfSiblings.Visible = false;
        if (txtNumberOfSiblings.Text == "1")
        {
            lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " sibling.";
        }
        else
        {
            lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " siblings.";
        }
    }
}