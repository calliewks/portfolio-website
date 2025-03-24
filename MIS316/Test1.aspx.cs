using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string FirstName = txtFirstName.Text;
        string LastName = txtLastName.Text;
        string Age = txtAge.Text;

        lblOutput.Text = FirstName + ", " + LastName + " is " + Age + " years old.";
    }


    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtAge.Text = "";
    }
}