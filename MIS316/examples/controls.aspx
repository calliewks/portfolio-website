<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="controls.aspx.cs" Inherits="MIS316_examples_controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlFirst" runat="server">
        First Panel<br />
        <br />
        <asp:Button ID="btnShowSecondPanel" runat="server" OnClick="btnShowSecondPanel_Click" Text="Show Second Panel" />
    </asp:Panel>
    <asp:Panel ID="pnlSecond" runat="server" Visible="False">
        Second Panel<br />
        <br />
        <asp:Button ID="btnShowFirstPanel" runat="server" OnClick="btnShowFirstPanel_Click" Text="Show First Panel" />
    </asp:Panel>
    <p>
        <asp:CheckBox ID="cbAgree" runat="server" Text="I Agree" />
    </p>
    <p>
        &nbsp;<asp:RadioButton ID="rbChoiceOne" runat="server" GroupName="my group" Text="Choice One" />
&nbsp;<asp:RadioButton ID="rbChoiceTwo" runat="server" GroupName="my group" Text="Choice Two" />
    </p>
    <p>
        <asp:Button ID="btnProcess" runat="server" OnClick="btnProcess_Click" Text="Process" />
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
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

