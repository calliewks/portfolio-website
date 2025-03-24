using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP1B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnStartOrder_Click(object sender, EventArgs e)
    {
        pnlOne.Visible = false;
        pnlTwo.Visible = true;

        lblOrderFor.Text = txtName.Text;
        lblNumberOfBagels.Text = txtNumber.Text;

        if (rbCarryOut.Checked)
        {
            lblOrderType.Text = "Carry Out";
            lblChargeTax.Text = "No";
        }
        else
        {
            lblOrderType.Text = "Dine In";
            lblChargeTax.Text = "Yes";
        }
    }

    protected void btnFinishOrder_Click(object sender, EventArgs e)
    {
        pnlTwo.Visible = false;
        pnlThree.Visible = true;

        decimal decCostPerBagel = 2m;
        string Toasted = "";
        string CreamCheese = "";
        decimal decNumberOfBagels = 0m;
        string bagelType = "Plain";
        string BagelsOrBagel = "bagels";
        string PaymentType = "Cash";
        decimal decTaxRate = .07m;
        decimal decTax = 0m;
        decimal decSubtotal = 0m;
        decimal decTotalDue = 0m;


        if (rbWheat.Checked)
        {
            decCostPerBagel += 1m;
            bagelType = "Wheat";
        }
        else if (rbEverything.Checked)
        {
            decCostPerBagel += 1.5m;
            bagelType = "Everything";
        }
        if (cbToasted.Checked)
        {
            decCostPerBagel += 0.5m;
            Toasted = "Toasted";
        }
        if (cbCreamCheese.Checked)
        {
            decCostPerBagel += 1m;
            CreamCheese = " with Cream Cheese";
        }
        if (txtNumber.Text == "1")
        {
            BagelsOrBagel = "bagel";
        }
        if (rbCredit.Checked)
        {
            PaymentType = "Credit";
        }
        decNumberOfBagels = Convert.ToDecimal(txtNumber.Text);
        decSubtotal = decCostPerBagel * decNumberOfBagels;
        if (rbDineIn.Checked == true)
        {
            decTax = decSubtotal * decTaxRate;
        }
        decTotalDue = (decSubtotal + decTax);


        lblComplete.Text = lblOrderType.Text + " order for " + lblOrderFor.Text + "<br/>";

        lblComplete.Text += "<br/>" + decNumberOfBagels + " " + Toasted + " " + bagelType + " " + BagelsOrBagel + CreamCheese + "<br/>";

        lblComplete.Text += "<br/>" + "Paying by " + PaymentType + "<br/>";

        lblComplete.Text += "<br/>" + "Subtotal: " + decSubtotal.ToString("C") + " (" + decCostPerBagel.ToString("C") + " each) " + "Tax: " + decTax.ToString("C") + "<br/>";

        lblComplete.Text += "Total due: " + "<strong>" + decTotalDue.ToString("C") + "<strong/>"; 
    }

    protected void btnNextCustomer_Click(object sender, EventArgs e)
    {
        pnlThree.Visible = false;
        pnlOne.Visible = true;

        txtName.Text = "";
        txtNumber.Text = "";
        rbCarryOut.Checked = true;
        rbDineIn.Checked = false;
        lblOrderFor.Text = "";
        lblOrderType.Text = "";
        lblNumberOfBagels.Text = "";
        rbPlain.Checked = true;
        rbWheat.Checked = false;
        rbEverything.Checked = false;
        cbCreamCheese.Checked = false;
        cbToasted.Checked = false;
        rbCash.Checked = true;
        rbCredit.Checked = false;
        lblChargeTax.Text = "";
    }
}
