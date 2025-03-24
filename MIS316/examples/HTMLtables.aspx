<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="HTMLtables.aspx.cs" Inherits="MIS316_examples_HTMLtables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <strong>Example of Output</strong></p>
    <table>
        <tr>
            <td>First Name:</td>
            <td>
                <asp:Label ID="lblFirstName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>
                <asp:Label ID="lblLastName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:Label ID="lblStreetAddress" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblCity" runat="server"></asp:Label>
                ,
                <asp:Label ID="lblState" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblZip" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

