

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_methods_parameter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // executes when the user clicks submit

        // perform the actions to output the formatted name
        lblFullName.Text = FormatFullName(txtFirstName.Text, txtLastName.Text);

        // process the number to see if its odd or even
        try
        {
            // create a variable to store the number that was given
            int intValueFromUser = Convert.ToInt32(txtNumber.Text);

            // call the method to determine if even or not
            if (IsEven(intValueFromUser) == true)
            {
                //yes its even
                lblOddOrEven.Text = "Even";
            }
            else
            {
                // no its odd
                lblOddOrEven.Text = "Odd";
            }
        }
        catch (Exception)
        {
            lblOddOrEven.Text = "Please give a number.";
        }
    
    }

    protected string FormatFullName(string strFirst, string strLast)
    {
        // takes the first and last name and creates the format: last, first

        // create a return variable
        string strFullName = "";

        // do the processing to set the value for the return variable
        strFullName = strLast + ", " + strFirst;

        //return the return variable
        return strFullName;
    }

    protected bool IsEven(int intNumber)
    {
        // determines if a number is even or not

        // create the return variable
        bool blnIsEven = false;

        // do the processing
        if (intNumber % 2 == 0)
        {
            // we know its even
            blnIsEven = true;
        }
        //return the variable
        return blnIsEven;

        //could all be done with just return (intNumber % 2 == 0);
    }

}