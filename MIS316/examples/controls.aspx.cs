using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_controls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShowSecondPanel_Click(object sender, EventArgs e)
    {
        // show the second panel
        pnlSecond.Visible = true;

        // hide the first panel
        pnlFirst.Visible = false;
    }

    protected void btnShowFirstPanel_Click(object sender, EventArgs e)
    {
        // hide the second panel and show the first
        pnlSecond.Visible = false;
        pnlFirst.Visible = true;
    }

    protected void btnProcess_Click(object sender, EventArgs e)
    {
        // determine what the user has selected
        if (cbAgree.Checked == true)
        {
            // the user has checked the agree box
            lblMessage.Text = "You have agreed.";
        }
        else
        {
            //the user has NOT checked the agree box
            lblMessage.Text = "You have NOT agreed!";
        }


        // what the user selected for the radiobuttons
        if (rbChoiceOne.Checked == true)
        {
            // the user has picked the first one
            lblMessage.Text += "You have selected the first option.";
        }
        else if (rbChoiceTwo.Checked == true)
        {
            //the user has picked the second one
            lblMessage.Text += "You have selected the second option.";
        }
        else
        {
            // the user has not picked a selection
            lblMessage.Text += "You have NOT made a selection!";
        }
    }
}