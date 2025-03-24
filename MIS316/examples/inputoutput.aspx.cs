using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_inputoutput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnProcess_Click(object sender, EventArgs e)
    {
        //This is a comment

        /* Thi is a multiple line comment
         * Another line
         * Yet another line.
         */

        lblOutputA.Text = "Callie";

        //Take the input from the user and place it in the labels
        lblOutputA.Text = txtInputA.Text;
        lblOutputB.Text = txtInputB.Text;
    }
}