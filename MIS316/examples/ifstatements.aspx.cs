using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_ifstatements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPrimary_Click(object sender, EventArgs e)
    {
        /*
         * conditions must evaluate to TRUE or FALSE
         * these usually use RELATIONAL operators: <, >, ==, !=, <=, >=
         * examples:
         *      intValue > 0 would evaluate to TRUE when intValue contains 7 and FALSE when intValue contains -2
         *      strName == "Callie" would evalate to TRUE when strName contains "Callie" and false for any other string
         *      
         */

        /*
        // if statements
        if (txtColor.Text == "red")
        {
            //this code ONLY executes if the condition above is TRUE
            lblMessage.Text = "YES! It is a primary color!";
        }
        else if (txtColor.Text == "blue")
        {
            // this code ONLY executes if the 1st condition is FALSE and the 2nd condition is true
            lblMessage.Text = "YES! It is a primary color!";
        }
        else if (txtColor.Text == "yellow")
        {
            //this ode ONLY executes if the 1st and 2nd conditions are FALSE and the 3rd condition is TRUE
            lblMessage.Text = "YES! It is a primary color!";
        }
        else
        {
            // this code ONLY executes if ALL CONDITIONS are FALSE
            lblMessage.Text = "NO :( It is NOT a primary color!";
        }
        */

        /*
        //sometimes conditions use LOGICAL operators: && for AND, || for OR
        if (txtColor.Text == "red" || txtColor.Text == "blue" || txtColor.Text == "yellow")
        {
            lblMessage.Text = "YES! It is a primary color!";
        }
        else
        {
            lblMessage.Text = "NO :( It is NOT a primary color!";
        }
        */

        // if needed, you can NEST if statements inside of one another
        if (txtColor.Text == "red" || txtColor.Text == "blue" || txtColor.Text == "yellow")
        {
            lblMessage.Text = "YES! It is a primary color!";
        }
        else
        {
            if (txtColor.Text == "purple" || txtColor.Text == "green" || txtColor.Text == "orange")
            {
                lblMessage.Text = "No! It is not a primary color, but it is a SECONDARY color!";
            }
            else
            {
                lblMessage.Text = "NO :( It is NOT a primary color or a secondary color!";
            }
        }
    }
}