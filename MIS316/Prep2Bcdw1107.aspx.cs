using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep2B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProcess_Click(object sender, EventArgs e)
    {
        //determine if the given number is a multiple of 2,3,4,5,6,7,8,9, and 10

        // create a variable and grab the input from the user
        int intValueFromUser = 0;
        intValueFromUser = Convert.ToInt32(txtNumber.Text);

        //clear output label before building new output
        lblResults.Text = "";

        //test and output results for numbers 2-10
        for (int i = 2; i <= 10; i++)
        {
            // perform 1 test that gets looped through
            if (IsMultipleOf(intValueFromUser, i) == true)
            {
                // the number given is a multiple of the counter
                // append a message with a line break after
                lblResults.Text += txtNumber.Text + " is a multiple of " + i.ToString() + "<br />";
            }
        }

        // create a message when there are no multiples
        if (lblResults.Text == "")
        {
            lblResults.Text = txtNumber.Text + " is not a multiple of any numbers from 2-10.";
        }

    }


    protected bool IsMultipleOf(int intNumberToTest, int intRoot)
    {
        // create a return variable
        bool blnIsMultipleOf = false;

        //do the processing
        if (intNumberToTest % intRoot == 0)
        {
            // the nujmber is a multiple of the root
            blnIsMultipleOf = true;
        }

        //return the return variable
        return blnIsMultipleOf;
    }
}