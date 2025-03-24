<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="foreachloops.aspx.cs" Inherits="MIS316_examples_foreachloops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ListBox ID="lstNumbers" runat="server" Rows="8" Width="100px">
            <asp:ListItem>125</asp:ListItem>
            <asp:ListItem>237</asp:ListItem>
            <asp:ListItem>900</asp:ListItem>
            <asp:ListItem>42</asp:ListItem>
            <asp:ListItem>71</asp:ListItem>
            <asp:ListItem>680</asp:ListItem>
            <asp:ListItem>39</asp:ListItem>
        </asp:ListBox>
        <br />
    </p>
    <table>
        <tr>
            <td>
                <asp:Button ID="btnAddThemAll" runat="server" OnClick="btnAddThemAll_Click" Text="Add Them All" />
            </td>
            <td>Sum: <strong>
                <asp:Label ID="lblRunningTotal" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnFindHighest" runat="server" OnClick="btnFindHighest_Click" Text="Find Highest" />
            </td>
            <td>Highest: <strong>
                <asp:Label ID="lblHighest" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnDoesNumberExist" runat="server" OnClick="btnDoesNumberExist_Click" Text="Does Number Exist?" ValidationGroup="exists" />
            </td>
            <td>Which Number?
                <asp:TextBox ID="txtWhichNumber" runat="server" ValidationGroup="exists"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvWhichNumber" runat="server" ControlToValidate="txtWhichNumber" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" ValidationGroup="exists"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvWhichNumber" runat="server" ControlToValidate="txtWhichNumber" Display="Dynamic" ErrorMessage="* 1 - 1000" ForeColor="Red" MaximumValue="1000" MinimumValue="1" SetFocusOnError="True" Type="Integer" ValidationGroup="exists"></asp:RangeValidator>
                <br />
                Was it found? <strong>
                <asp:Label ID="lblFoundOrNot" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnHowManyOddEven" runat="server" OnClick="btnHowManyOddEven_Click" Text="How Many Odd/Even?" />
            </td>
            <td>Odd: <strong>
                <asp:Label ID="lblOdd" runat="server"></asp:Label>
                </strong>
                <br />
                Even: <strong>
                <asp:Label ID="lblEven" runat="server"></asp:Label>
                </strong></td>
        </tr>
    </table>
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

