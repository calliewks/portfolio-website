using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP2B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnStart_Click(object sender, EventArgs e)
    {
        // Show Order Selections panel and hide all others
        /***** WRITE 1 LINE OF CODE THAT USES THE METHOD NAMED ShowPanel HERE *****/
        ShowPanel(2);


        // call method to summarize the initial input
        SummarizeInput();
    }

    protected void btnFinish_Click(object sender, EventArgs e)
    {
        // show Receipt panel and hide all others
        /***** WRITE 1 LINE OF CODE THAT USES THE METHOD NAMED ShowPanel HERE *****/
        ShowPanel(3);


        // declare variables to be used and give defaults
        int intNumberOfBagels = 0; /***** DO NOT CHANGE *****/
        decimal decTaxRate = 0m; /***** DO NOT CHANGE *****/
        decimal decSubtotal = 0m; /***** DO NOT CHANGE *****/
        decimal decTax = 0m; /***** DO NOT CHANGE *****/
        decimal decTotal = 0m; /***** DO NOT CHANGE *****/


        // grab and convert input for number of bagels and tax rate
        /***** WRITE 2 LINES OF CODE THAT READ THE INPUT FROM THE USER AND STORE IT IN intNumberOfBagels and decTaxRate *****/
        intNumberOfBagels = Convert.ToInt32(txtNumberOfBagels.Text);
        decTaxRate = Convert.ToDecimal(rblOrderType.SelectedItem.Value);


        // calculate subtotal, tax, and total
        /***** WRITE THE LINES OF CODE THAT CALL THE GetBagelCost, GetCostOfOptions and CalculateTax METHODS THAT YOU CREATED *****/
        decSubtotal = (GetBagelCost() + GetCostOfOptions()) * intNumberOfBagels;
        decTax = CalculateTax(decSubtotal, decTaxRate);
        decTotal = decSubtotal + decTax;



        // get a summary of the options selected
        /***** WRITE THE LINE OF CODE THAT CALLS THE GetSelectedOptions METHOD THAT YOU CREATED AND STORES IT IN A NEW STRING VARIABLE *****/
        string strOptionsList = GetSelectedOptions();


        // output the receipt details
        /***** WRITE 1 LINE OF CODE THAT CALLS THE GenerateReceipt METHOD THAT YOU CREATED AND STORES IT IN lblOrderSummary's TEXT PROPERTY *****/
        lblOrderSummary.Text = GenerateReceipt(lblCustomerName.Text.ToString(), intNumberOfBagels, ddlTypeOfBagel.SelectedItem.Text.ToString(), strOptionsList, rblPaymentType.SelectedItem.Text.ToString(), decSubtotal, decTax, decTotal);
    }

    protected void btnNextCustomer_Click(object sender, EventArgs e)
    {
        ResetAllSettings(); 
        //***** DO NOT CHANGE EXCEPT TO REMOVE THE COMMENTS AFTER YOU'VE WRITTEN THIS METHOD *****/
    }

    protected void ShowPanel(int intPanelNumber) /***** DO NOT CHANGE ANYTHING IN THIS METHOD *****/
    {
        /* This method hides all panels except the one designated by the parameter
            * 1 = Start panel
            * 2 = Order Selections panel
            * 3 = Receipt panel
            * 
            */

        // hide all panels
        pnlStart.Visible = false;
        pnlOrderSelections.Visible = false;
        pnlReceipt.Visible = false;

        // show one panel based on parameter
        if (intPanelNumber == 1)
        {
            pnlStart.Visible = true;
        }
        else if (intPanelNumber == 2)
        {
            pnlOrderSelections.Visible = true;
        }
        else
        {
            pnlReceipt.Visible = true;
        }
    }


    /* METHOD #1: SummarizeInput
     * It should:
     *      have no return
     *      have no parameters
     *      take the input from the 2 TextBoxes and place them in the 2 corresponding Labels
     *      set the Text property of lblOrderType based on the selection in the Order Type RadioButtonList
     *      set the Text property of lblTaxRate based on the selection in the Order Type RadioButtonList
     *          
     *      >>> HINT: decimal variables can be formatted as percentages with 2 decimal places by using .ToString("P")
     *          
     */
    protected void SummarizeInput()
    {
        decimal decTaxRate = 0m;
        lblCustomerName.Text = txtCustomerName.Text.ToString();
        lblOrderType.Text = rblOrderType.SelectedItem.Text.ToString();
        lblNumberOfBagels.Text = txtNumberOfBagels.Text.ToString();
        decTaxRate = Convert.ToDecimal(rblOrderType.SelectedItem.Value);
        lblTaxRate.Text = decTaxRate.ToString("P");
    }



    /* METHOD #2: GetSelectedOptions
     * It should:
     *      return a string that lists the additional options the user selected (separated by commas)
     *           for example: Cream Cheese, Toasted, Peanut Butter
     *      have no parameters
     *      the logic for this method should loop through all ListItem objects in the cblAdditionalOptions CheckBoxList and
     *           append each option's name if it's selected
     *           
     *      >>> HINT: You can append a comma before all of the options EXCEPT the first one. To determine which one is
     *          the first one, you can use a counter OR a flag.
     *               
     */
    protected string GetSelectedOptions()
    {
        string strAdditionalItems = "";
        int i = 0;
        System.Collections.IList list= cblAdditionalOptions.Items;
        foreach (ListItem li in cblAdditionalOptions.Items)
        {
            if (li.Selected == true)
            {
                if (i == 0)
                {
                    strAdditionalItems = li.Text;
                    i++;
                }
                else
                {
                    strAdditionalItems = strAdditionalItems + ", " + li.Text;
                }
            }
        }
        if (i == 0)
        { strAdditionalItems = "None"; }
        return strAdditionalItems;
    }


    /* METHOD #3: GetBagelCost
     * It should:
     *      return a decimal that is the cost of the selected bagel type
     *      have no parameters
     *      
     *      >>> HINT: Make sure to familiarize yourself with the DropDownList item settings. The price is in the Value property
     *          of each ListItem.
     *      
     */
    protected decimal GetBagelCost()
    {
        decimal decBagelCost = 0m;
        if (ddlTypeOfBagel.SelectedItem != null)
        {
            if (decimal.TryParse(ddlTypeOfBagel.SelectedItem.Value, out decBagelCost) == true)
            {
                return decBagelCost;
            }
            else
            {
                return decBagelCost;
            }
        }
        else
        {
            return 0;
        }
    }



    /* METHOD #4: GetCostOfOptions
     * It should:
     *      return a decimal that is the sum of all of the costs of the selected additional options
     *      have no parameters
     *      the logic for this method should loop through all ListItem objects in the cblAdditionalOptions CheckBoxList
     *      
     *      >>> HINT: This uses a running total.
     * 
     */
    protected decimal GetCostOfOptions()
    {
        decimal decCostOfOptions = 0m;
        foreach (ListItem liObject in cblAdditionalOptions.Items)
        {
            if (liObject.Selected == true)
            {
                decCostOfOptions += Convert.ToDecimal(liObject.Value);

            }
        }
        return decCostOfOptions;
    }



    /* METHOD #5: CalculateTax
     * It should:
     *      return a decimal that is the product of a subtotal and tax rate
     *      has 2 parameters: a subtotal and a tax rate
     *      
     *      >>> HINT: Don't forget to use appropriate data types for your parameters.
     *      
     *      >>> NOTE: This method should be independent of the design of the page!
     * 
     */
    protected decimal CalculateTax(decimal decSubtotal, decimal decTaxRate)
    {
        decimal decCalculatedTax = 0m;
        decCalculatedTax = decSubtotal * decTaxRate;
        return decCalculatedTax;
    }


    /* METHOD #6: GenerateReceipt
     * It should:
     *      return a string that summarizes the order in this format:
     *           Order for [Name]
     *           
     *           [#] [BagelType] bagel[s]
     *           Added Options: [List of options]
     *           
     *           Paying by [PaymentType]
     *           
     *           Subtotal: $[0.00] ($[0.00] each)
     *           Tax: $[0.00]
     *           Total: $[0.00]
     *      has 8 parameters: name, number of bagels, bagel type, options list, payment type, subtotal, tax, and total
     *      
     *      >>> NOTE: The parts in [square brakcets] above will change depending on the input.
     *                Don't forget the line breaks <br /> in the receipt string.
     *                
     *      >>> HINT: This will be a lot of string concatenation. This method will build one large string that gets returned.
     *      >>> HINT: Don't forget the logic for the s on bagel(s). You also need to do math to determine the "price each" for the bagels. 
     *
     *      >>> NOTE: This method should be independent of the design of the page!
     * 
     */
    protected string GenerateReceipt(string strName, int intNumberOfBagels, string strBagelType, string strSelectedOption, string strPaymentType, decimal decSubtotal, decimal decCalculatedTax, decimal decTotal)
    {
        string strBagelsOrBagel = "bagels";
        if (txtNumberOfBagels.Text == "1")
        {
            strBagelsOrBagel = "bagel";
        }
        string strOption = GetSelectedOptions();
        decimal decPriceEach = decSubtotal / intNumberOfBagels;


        string strGeneratedReceipt =
            "Order for " + strName + "<br/>" + "<br/>"
            + intNumberOfBagels + " " + strBagelType + " " + strBagelsOrBagel + "<br/>"
            + "Added Options: " + strSelectedOption + "<br/>" + "<br/>"
            + "Paying by " + strPaymentType + "<br/>" + "<br/>"
            + "Subtotal: " + decSubtotal.ToString("C") + " (" + decPriceEach.ToString("C") + " each)" + "<br/>"
            + "Tax: " + decCalculatedTax.ToString("C") + "<br/>" + "Total: " + "<strong>" + decTotal.ToString("C") + "<strong>" + "<br/>";


        return strGeneratedReceipt;
    }



    /* METHOD #7: ResetAllSettings
     * It should:
     *      have no return
     *      have no parameters
     *      use the ShowPanel method above to hide all except the Start panel
     *      change all options back to the starting state, this includes:
     *           the 2 TextBoxes
     *           the 5 summary Labels (4 in the 2nd panel and 1 in the 3rd panel)
     *           the 2 RadioButtonLists
     *           the 1 DropDownList
     *           looping through to uncheck all of the Items in the CheckBoxList
     *           
     *      >>> HINT: Remember that you can reference the indexes of Lists
     * 
     */
    protected void ResetAllSettings()
    {
        ShowPanel(1);
        txtCustomerName.Text = string.Empty;
        txtNumberOfBagels.Text = string.Empty;
        rblOrderType.SelectedIndex = 0;
        rblPaymentType.SelectedIndex = 0;
        lblCustomerName.Text = string.Empty;
        lblNumberOfBagels.Text = string.Empty;
        lblOrderType.Text = string.Empty;
        lblTaxRate.Text = string.Empty;
        lblOrderSummary.Text = string.Empty;
        ddlTypeOfBagel.SelectedIndex = 0;
        foreach (ListItem liChecked in cblAdditionalOptions.Items)
        {
            liChecked.Selected = false;
        }
    }
}