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

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblAdd.Text = "";
        lblSubtract.Text = "";
        lblMultiply.Text = "";
        lblDivide.Text = "";
        txtValueA.Text = "";
        txtValueB.Text = "";
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decAddedValues = 0m;

            // convert values to decimal and read as input
            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            // calculate, so be sure to add these numbers together
            decAddedValues = decValueA + decValueB;

            // output results to the page
            lblAdd.Text = decAddedValues.ToString();
        }
        catch (Exception)
        {
            lblAdd.Text = "Please enter numeric values in the textboxes!";
        }
       
    }

    protected void btnSubtract_Click(object sender, EventArgs e)
    {
        try
        {
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decSubtractedValues = 0m;

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decSubtractedValues = decValueA - decValueB;

            lblSubtract.Text = decSubtractedValues.ToString();
        }
        catch (Exception)
        {
            lblSubtract.Text = "Please enter numeric values in the textboxes!";
        }
    }

    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        try
        {
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decMultipliedValues = 0m;

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decMultipliedValues = decValueA * decValueB;

            lblMultiply.Text = decMultipliedValues.ToString();
        }
        catch (Exception)
        {
            lblMultiply.Text = "Please enter numeric values in the textboxes!";
        }
    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        try
        {
            decimal decValueA = 0m;
            decimal decValueB = 0m;
            decimal decDividedValues = 0m;

            decValueA = Convert.ToDecimal(txtValueA.Text);
            decValueB = Convert.ToDecimal(txtValueB.Text);

            decDividedValues = decValueA / decValueB;

            lblDivide.Text = decDividedValues.ToString();
        }
        catch (DivideByZeroException)
        {
            lblDivide.Text = "You cannot divide by 0!";
        }
        catch (Exception)
        {
            lblDivide.Text = "Please enter numeric values in the textboxes!";
        }
    }

    protected void btnComplete_Click(object sender, EventArgs e)
    {
            btnAdd_Click(sender, e);
            btnSubtract_Click(sender, e);
            btnMultiply_Click(sender, e);
            btnDivide_Click(sender, e);
    }
}


