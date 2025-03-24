using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_strings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //create a string variable
        string strName;

        //assign a string literal
        strName = "Callie";

        //output to a Label's Text property
        lblMessage.Text = strName;

        //concatenating strings with strings
        lblMessage.Text = "Your name is: " + strName;

        //assigning a Textbox's Text property to a string
        strName = txtName.Text;
        lblMessage.Text = "Your name is: " + strName;

        //using an HTML line break
        lblMessage.Text = "Your name is: " + strName + "<br />" + "You entered: 123";

        //show concatenating strings with numeric data types
        try //must use try/catch because of the conversion!
        {
            //get the name from the user
            strName = txtName.Text;

            //get the number from the user
            decimal decNumber = 0m;
            decNumber = Convert.ToDecimal(txtNumber.Text);

            //output the message
            lblMessage.Text = "Your name is: " + strName + "<br />" + "You entered: " + decNumber.ToString();
        }
        catch (Exception)
        {
            lblMessage.Text = "Try again!";
            //throw;
        }
    }
}