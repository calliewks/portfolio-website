<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="ifstatements.aspx.cs" Inherits="MIS316_examples_ifstatements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Enter a color:
        <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnPrimary" runat="server" OnClick="btnPrimary_Click" Text="Is it primary?" />
        <br />
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

