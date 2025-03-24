<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="dropdownlists2.aspx.cs" Inherits="MIS316_examples_dropdownlists2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DropDownList ID="ddlStudents" runat="server" AppendDataBoundItems="True" CausesValidation="True" DataSourceID="dsAllStudents" DataTextField="fullName" DataValueField="studentId" OnSelectedIndexChanged="ddlStudents_SelectedIndexChanged" ValidationGroup="students" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvStudents" runat="server" ControlToValidate="ddlStudents" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="students"></asp:RequiredFieldValidator>
        <asp:SqlDataSource ID="dsAllStudents" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, lastName + ', ' + firstName AS fullName FROM Student ORDER BY lastName, firstName"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;<br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
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

