using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_dropdownlists2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlStudents_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Place the selected item's text into the output
        lblMessage.Text = "You have selected: " + ddlStudents.SelectedItem.Text;
    }
}