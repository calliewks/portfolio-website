<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="MP1B.aspx.cs" Inherits="MIS316_MP1B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="font-style: italic">
        Bagel Shop<span class="auto-style1"> [Point of Sales System]</span></h1>
    <p style="font-style: italic">
        </p>
    <asp:Panel ID="pnlOne" runat="server">
        <table>
            <tr>
                <td>Customer Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>How Many Bagels?:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNumberOfBagels" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvNumberOfBagels" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="* enter a whole number between 1 and 25" ForeColor="Red" MaximumValue="25" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:RadioButton ID="rbDineIn" runat="server" GroupName="inorout" Text="Dine In (7% tax)" />
        <br />
        <asp:RadioButton ID="rbCarryOut" runat="server" Checked="True" GroupName="inorout" Text="Carry Out" />
        <br />
        <br />
        <asp:Button ID="btnStartOrder" runat="server" OnClick="btnStartOrder_Click" Text="Start Order" />
    </asp:Panel>
    <asp:Panel ID="pnlTwo" runat="server" Visible="False">
        <table>
            <tr>
                <td><strong>Order for:</strong></td>
                <td>
                    <asp:Label ID="lblOrderFor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Order Type:</strong></td>
                <td>
                    <asp:Label ID="lblOrderType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Number of Bagels:</strong></td>
                <td>
                    <asp:Label ID="lblNumberOfBagels" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Base Price:</strong></td>
                <td>$2.00</td>
            </tr>
            <tr>
                <td><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Type of Bagel:</strong></td>
                <td>
                    <asp:RadioButton ID="rbPlain" runat="server" GroupName="typeofbagel" Text="Plain" Checked="True" />
                    <asp:RadioButton ID="rbWheat" runat="server" GroupName="typeofbagel" Text="Wheat ($1.00)" />
                    <asp:RadioButton ID="rbEverything" runat="server" GroupName="typeofbagel" Text="Everything ($1.50)" />
                </td>
            </tr>
            <tr>
                <td><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Additional Options:</strong></td>
                <td>
                    <asp:CheckBox ID="cbToasted" runat="server" Text="Toasted ($0.50)" />
                    <asp:CheckBox ID="cbCreamCheese" runat="server" Text="Cream Cheese ($1.00)" />
                </td>
            </tr>
            <tr>
                <td><strong></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Payment Type:</strong></td>
                <td>
                    <asp:RadioButton ID="rbCash" runat="server" GroupName="paymenttype" Text="Cash" Checked="True" />
                    <asp:RadioButton ID="rbCredit" runat="server" GroupName="paymenttype" Text="Credit" />
                </td>
            </tr>
            <tr>
                <td><strong>Charge 7% Tax?</strong></td>
                <td>
                    <asp:Label ID="lblChargeTax" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="btnFinishOrder" runat="server" Text="Finish Order" OnClick="btnFinishOrder_Click" />
    </asp:Panel>
    <asp:Panel ID="pnlThree" runat="server" Visible="False">
        <br />
        <asp:Label ID="lblComplete" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnNextCustomer" runat="server" Text="Next Customer" OnClick="btnNextCustomer_Click" />
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

