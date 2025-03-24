<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="MP1A.aspx.cs" Inherits="MIS316_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Value A:&nbsp;
        <asp:TextBox ID="txtValueA" runat="server" Width="166px"></asp:TextBox>
    </p>
    Value B:&nbsp;
    <asp:TextBox ID="txtValueB" runat="server" Width="166px"></asp:TextBox>
    <p>
        <asp:Button ID="btnAdd" runat="server" Text="Add Them" Width="145px" OnClick="btnAdd_Click" />
    &nbsp;<asp:Label ID="lblAdd" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract Them" Width="145px" OnClick="btnSubtract_Click" />
    &nbsp;<asp:Label ID="lblSubtract" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply Them" Width="145px" OnClick="btnMultiply_Click" />
    &nbsp;<asp:Label ID="lblMultiply" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnDivide" runat="server" Text="Divide Them" Width="145px" OnClick="btnDivide_Click" />
    &nbsp;<asp:Label ID="lblDivide" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnComplete" runat="server" Text="Complete All Calculations" Width="197px" OnClick="btnComplete_Click" />
    </p>
    <p>
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear All Values" Width="111px" />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

