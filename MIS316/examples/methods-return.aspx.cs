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
        //PrintMyName();
        //PrintAnHTMLLineBreak();
        //PrintMyTitle();
        //PrintAnHTMLLineBreak();
        //PrintAnHTMLLineBreak();
        //PrintMyEmail();

        // call custom method with return
        // if your custom method has a return type, you MUST assign/store it somewhere - it needs to be used!
        // this can easily be done by putting the method call on the right side of an assignment statement
        // lblMessage.Text = GetMyName();
        // lblMessage.Text += GetAnHTMLLineBreak();
        // lblMessage.Text += GetMyTitle();
        // lblMessage.Text += GetAnHTMLLineBreak();
        // lblMessage.Text += GetAnHTMLLineBreak();
        lblMessage.Text = GetMyName() + GetAnHTMLLineBreak() + GetMyTitle() + GetAnHTMLLineBreak() + GetAnHTMLLineBreak();

        //only show email if checkbox was selected
        if (cbIncludeEmail.Checked == true)
        {
            //PrintMyEmail();
            lblMessage.Text += GetMyEmail();
        }
    }
    
    protected string GetMyEmail()
    {
        // return the email

        // create a return variable

        // do the processing
        string strReturn = "matthewskd@uncw.edu";

        // return the variable
        return strReturn;
    }

    protected string GetAnHTMLLineBreak()
    {
        // return an HTML line break
        return "<br />";
    }

    protected string GetMyName()
    {
        // return my name to whoever called the method

        // create a return variable
        string strReturn = "";

        // do processing to set the value of the return variable
        strReturn = "Callie Weeks";

        // return (send back) the return variable
        return strReturn;
    }

    protected string GetMyTitle()
    {
        // reutn my title to whoever called the method

        // create a return variable
        string strReturn = "";

        // do processing to set the value
        strReturn = "Assistant Professor";

        // return the return variable
        return strReturn;
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