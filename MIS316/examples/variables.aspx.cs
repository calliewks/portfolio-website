using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_variables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        ///* Variables
        //* 1. represent a storage location in memory of the computer
        //* 2. can only hold ONE value at a time
        //* 3. only exist in the block of code in which they were created
        //* 4. must be given a name when declared (created)
        //* 5. must also be given a DATA TYPE when declared
        //*       int         is used for a whole number (aka an integer)
        //*       decimal     is used for a number that has a fractional part (aka a decimal part)
        //*       bool        is used for a boolean value, that means true or false (like a bit in SQL)
        //*       string      is used for a string of characters, that means letters and words (like varchar in SQL)
        //* 6. can also be given an initial value (this is called initializing)
        //*/


        ///* Here is the generic pattern for declaring a variable:
        //* data_type dtName = initial_value;
        //*/

        //// create an integer variable
        //int intAge = 20;

        //// create a decimal variable
        //decimal decCost = 22.50m;

        //// create a boolean variable
        //bool blnCanBuyAlcohol = false;

        //// create a string variable
        //string strName = "Callie";


        ///* You can assign a value to variable using an assignment statement
        // *
        // * Here is the generic pattern for an assignment statement:
        // * memory_location = value;
        // */

        //// change the value for age, cost, can buy alcohol, and name
        //intAge = 21;
        //decCost = 19.99m;
        //blnCanBuyAlcohol = true;
        //strName = "Week";


        ///* For numeric data types, you can also do math and store the result into a variable
        // * Arithmetic in C# is done using +, -, *, and / (add, subtract, multiply, divide)
        // */
        //decCost = 0.1m * 25m; // takes 10% of 25 and remembers the result
        //intAge = intAge + 1; // adds 1 to the current age and remembers the new age

        //// for strings, you can do what's known as concatenating - this just means joining strings
        //strName = "Callie" + " Weeks";          //"Callie Weeks"
        //strName = "Your full name is: " + strName;


        ///* Control properties also have associated data types
        // * For example, all Text properties are strings.
        // * This means you can store a string into a Text property of a control (such as a TextBox or Label).
        // */
        ////lblResult.Text = txtNumber.Text;
        ////lblResult.Text = "You entered " + txtNumber.Text + " into the textbox.";

        ///* If you want to concatenate numeric data types to strings, you must tell C# to make them a string first.
        // * This is done by calling the ToString() method.
        // * You can "call a method" by using the DOT operator. Methods always end with parentheses ().
        // */
        ////lblResult.Text = "Your age is " + intAge.ToString();
        //lblResult.Text = "The cost is " + decCost.ToString();



        try
        {
            // create vriables to hold input and perform calculations
            decimal decNumber = 0m;
            decimal decCalculatedValue = 0m;


            // read the input from the users, and store it in a variable
            decNumber = Convert.ToDecimal(txtNumber.Text);


            //perform the calculation, and store it in a variable
            decCalculatedValue = decNumber + 100;


            // output the results to the page
            lblResult.Text = "The number plus 100 is " + decCalculatedValue.ToString();
            // there is also Convert.ToString()
        }
        catch (Exception)
        {
            lblResult.Text = "Please enter a number.";
        }

    }
}