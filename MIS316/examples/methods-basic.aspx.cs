using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_methods_basic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // executed every time the page loads (NOT JUST THE FIRST TIME!!!!)
    }

    protected void btnExecute_Click(object sender, EventArgs e)
    {
        // executed when the user clicks btnExecute

        // clear the output Label
        lblMessage.Text = "";

        // call some custom methods
        PrintMyName();
        PrintAnHTMLLineBreak();
        PrintMyTitle();
        PrintAnHTMLLineBreak();
        PrintAnHTMLLineBreak();
        PrintMyEmail();

        //only show email if checkbox was selected
        if (cbIncludeEmail.Checked == true)
        {
            PrintMyEmail();
        }
    }


    protected void PrintMyName()
    {
        // this prints my name to the output label
        lblMessage.Text += "Callie Weeks";
    }

    protected void PrintMyTitle()
    {
        // this prints my title to the output label
        lblMessage.Text += "Assistant Professor";
    }

    protected void PrintMyEmail()
    {
        //this prints my email to the output label
        lblMessage.Text += "matthewskd@uncw.edu";
    }

    protected void PrintAnHTMLLineBreak()
    {
        // append an HTML line break to the output label
        lblMessage.Text += "<br />";
    }
}