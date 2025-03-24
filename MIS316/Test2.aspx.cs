using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    /* 
     * >>> HINT: Make sure you call the custom method below.
     * >>> HINT: Store the return of custom method in a variable.
     */
    protected void AddButton_Click(object sender, EventArgs e)
    {
        ListItem liProduct = new ListItem(txtProductName.Text, txtPrice.Text);
        rblProducts.Items.Add(liProduct);
        CalculateAveragePrice(rblProducts);
        txtPrice.Text = "";
        txtProductName.Text = "";
    }

    /* 
     * >>> HINT: Make sure you call the custom method below.
     * >>> HINT: Store the return of custom method in a variable.
     * >>> HINT: You should not calculate the average price if there are no people left in the list. 
     */
    protected void RemoveButton_Click(object sender, EventArgs e)
    {
        rblProducts.Items.RemoveAt(rblProducts.SelectedIndex);
        RemoveButton.Visible = false;
        CalculateAveragePrice(rblProducts);
    }


    /* CUSTOM METHOD: CalculateAveragePrice
     * It should:
     *      return a decimal that is the average price of all products in the RadioButtonList
     *      have one parameter called products with the RadioButtonList as the type
     *      
     *      >>> HINT: You need a running total variable.
     *      
     *      >>> HINT: To calculcate the average price, you need to use the value of each item in the list
     *      
     *      >>> HINT: Make sure you use the parameter in your method. 
     */

    protected void rblProducts_SelectedIndexChanged(object sender, EventArgs e)
    {
        RemoveButton.Visible = true;
    }

    public decimal CalculateAveragePrice (RadioButtonList products)
    {
        decimal decAveragePrice = 0m;
        int intCount = 0;
        decimal decPrices = 0m;

        foreach (ListItem liProduct in rblProducts.Items)
        {
            intCount++;
            decPrices += Convert.ToDecimal(liProduct.Value);
        }
        if (rblProducts.Items.Count != 0)
        {
            decAveragePrice = (decPrices / rblProducts.Items.Count);
            averagePriceOutput.Text = decAveragePrice.ToString("F2");
        }
        if (rblProducts.Items.Count == 0)
        {
            averagePriceOutput.Text = "N/A";
        }
        return decAveragePrice;
    }
}