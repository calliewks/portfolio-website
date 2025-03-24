using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_examples_singleselectionlists : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSelectedValue.Text = ddlStates.SelectedValue;
        lblSelectedIndex.Text = ddlStates.SelectedIndex.ToString();
        lblSelectedItem.Text = ddlStates.SelectedItem.ToString(); // you should NEVER use this one
        lblSelectedItemText.Text = ddlStates.SelectedItem.Text;
        lblSelectedItemValue.Text = ddlStates.SelectedItem.Value;
        lblItemsCount.Text = ddlStates.Items.Count.ToString();

        lblMessage.Text = "You live in " + ddlStates.SelectedItem.Text + " (" + ddlStates.SelectedValue + ").";
        if (ddlStates.SelectedValue == "NC")
        {
            lblMessage.Text += " I do too!";
        }
    }

    protected void btnClearAllItems_Click(object sender, EventArgs e)
    {
        // clear all of the items from the DDL
        ddlStates.Items.Clear();
    }

    protected void btnAddNewItem_Click(object sender, EventArgs e)
    {
        //OPTION 1: just a string
        //ddlStates.Items.Add(txtNewText.Text);
        //ddlStates.Items.Add(txtNewValue.Text);

        //OPTION 2: Using a new ListItem object, text and value can have different things
        ListItem liState = new ListItem(txtNewText.Text, txtNewValue.Text);
        ddlStates.Items.Add(liState);
    }

    protected void btnRemoveSelectedItem_Click(object sender, EventArgs e)
    {
        //ddlStates.Items.RemoveAt(ddlStates.SelectedIndex);

        ddlStates.Items.Remove(ddlStates.SelectedItem);
    }
}