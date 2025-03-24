<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="inputoutput.aspx.cs" Inherits="MIS316_examples_inputoutput" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:TextBox ID="txtInputA" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblOutputA" runat="server"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtInputB" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblOutputB" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnProcess" runat="server" OnClick="btnProcess_Click" Text="Process" />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

