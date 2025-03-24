<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="MIS316_test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            font-size: x-large;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td>
                <strong style="text-align: center; font-size: large;">Products</strong><br />
                <asp:RadioButtonList ID="rblProducts" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblProducts_SelectedIndexChanged">
                    <asp:ListItem Value="5.5">Nutella</asp:ListItem>
                    <asp:ListItem Value="2.25">Pringles</asp:ListItem>
                    <asp:ListItem Value="12">Steak</asp:ListItem>
                    <asp:ListItem Value="1.75">Soda</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="vertical-align: top">
                <table>
                    <tr>
                        <td><b style="font-size: medium">Average Price:</b></td>
                        <td>
                <asp:Label ID="averagePriceOutput" runat="server">-</asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <strong style="font-size: large">Add a new person<br />
    </strong>
    <table>
        <tr>
            <td>Product Name</td>
            <td>
    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ControlToValidate="txtProductName" ErrorMessage="* Product name field cannot be blank" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="priceRequiredFieldValidator" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="* Price field cannot be blank" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="priceRangeValidator" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="* Please enter an price between 1 and 99" ForeColor="Red" MaximumValue="99" MinimumValue="1" style="font-weight: 700" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" Text="Add" />
            </td>
            <td>
    <asp:Button ID="RemoveButton" runat="server" OnClick="RemoveButton_Click" Text="Remove" Visible="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<br />
    <br />
    <em>&nbsp;</em><span class="auto-style1"><em>&gt;&gt;&gt; You should be able to add a product to the list by providing product name and price.<br />
    <br />
    &gt;&gt;&gt; After adding a product, the user input in both textboxes should clear.
    <br />
    <br />
    &gt;&gt;&gt; Remove button should become available after user selects a product from the list.
    <br />
    <br />
    &gt;&gt;&gt; After removing the product, the remove button should be hidden.<br />
    <br />
    &gt;&gt;&gt; When there is no product left in the list, the average should be &quot;N/A.&quot;</em></span><br />
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</asp:Content>

