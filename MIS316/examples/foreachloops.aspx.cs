using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_foreachloops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddThemAll_Click(object sender, EventArgs e)
    {
        int intCurrent = 0;
        int intRunningTotal = 0;

        foreach (ListItem liNumber in lstNumbers.Items)
        {
            intCurrent = Convert.ToInt32(liNumber.Text);

            intRunningTotal += intCurrent;
        }
        lblRunningTotal.Text = intRunningTotal.ToString();
    }

    protected void btnFindHighest_Click(object sender, EventArgs e)
    {
        int intCurrent = 0;
        int intHighest = 0;

        foreach (ListItem liNumber in lstNumbers.Items)
        {
            intCurrent = Convert.ToInt32(liNumber.Text);
            if (intCurrent > intHighest)
            {
                intHighest = intCurrent;
            }
        }
        lblHighest.Text = intHighest.ToString();
    }


    protected void btnDoesNumberExist_Click(object sender, EventArgs e)
    {
        int intCurrent = 0;
        int intWhichNumber = Convert.ToInt32(txtWhichNumber.Text);
        bool blnFoundOrNot = false;

        foreach (ListItem liNumber in lstNumbers.Items)
        {
            intCurrent = Convert.ToInt32(liNumber.Text);

            if (intCurrent == intWhichNumber)
            {
                blnFoundOrNot = true;
            }
        }
        lblFoundOrNot.Text = blnFoundOrNot.ToString();
    }

    protected void btnHowManyOddEven_Click(object sender, EventArgs e)
    {
        int intCurrent = 0;
        int intOdd = 0;
        int intEven = 0;

        foreach (ListItem liNumber in lstNumbers.Items)
        {
            intCurrent = Convert.ToInt32(liNumber.Text);

            if (intCurrent % 2 == 0)
            {
                intEven++; 
            }
            else
            {
                intOdd++;
            }
        }
        lblOdd.Text = intOdd.ToString();
        lblEven.Text = intEven.ToString();
    }
}