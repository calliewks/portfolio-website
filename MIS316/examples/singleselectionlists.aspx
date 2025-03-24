<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="singleselectionlists.aspx.cs" Inherits="MIS316_examples_singleselectionlists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
            <asp:ListItem Value="GA">Georgia</asp:ListItem>
            <asp:ListItem Value="FL">Florida</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvStates" runat="server" ControlToValidate="ddlStates" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p>
        <br />
        <table>
            <tr>
                <td>.SelectedValue</td>
                <td>
                    <asp:Label ID="lblSelectedValue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>.SelectedIndex</td>
                <td>
                    <asp:Label ID="lblSelectedIndex" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>.SelectedItem</td>
                <td>
                    <asp:Label ID="lblSelectedItem" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>.SelectedItem.Text</td>
                <td>
                    <asp:Label ID="lblSelectedItemText" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>SelectedItem.Value</td>
                <td>
                    <asp:Label ID="lblSelectedItemValue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>.Items.Count</td>
                <td>
                    <asp:Label ID="lblItemsCount" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
    </p>
    <p>
        <asp:Button ID="btnClearAllItems" runat="server" OnClick="btnClearAllItems_Click" Text="Clear All Items" />
    </p>
    <p>
        <asp:Button ID="btnAddNewItem" runat="server" OnClick="btnAddNewItem_Click" Text="Add New Item" />
&nbsp;Text:
        <asp:TextBox ID="txtNewText" runat="server"></asp:TextBox>
&nbsp;Value:
        <asp:TextBox ID="txtNewValue" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnRemoveSelectedItem" runat="server" OnClick="btnRemoveSelectedItem_Click" Text="Remove Selected Item" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

