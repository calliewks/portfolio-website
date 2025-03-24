using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_multiplerecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvStudents_PageIndexChanged(object sender, EventArgs e)
    {
        gvStudents.SelectedIndex = -1;
    }
}