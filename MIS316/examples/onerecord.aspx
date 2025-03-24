<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="onerecord.aspx.cs" Inherits="MIS316_examples_onerecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Select a Student:
        <asp:DropDownList ID="ddlStudent" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" DataSourceID="dsStudentNames" DataTextField="fullName" DataValueField="studentId">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvStudents" runat="server" ControlToValidate="ddlStudent" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p>
        <strong>DetailsView:</strong>&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:DetailsView ID="dvOneStudent" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="studentId" DataSourceID="dsOneStudent" ForeColor="Black" GridLines="Vertical" Height="50px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="studentId" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="studentId" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="Zip Code" SortExpression="zip" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
    </p>
    <p>
        <strong>Form View:</strong></p>
    <p>
        <asp:FormView ID="fvOneStudent" runat="server" DataKeyNames="studentId" DataSourceID="dsOneStudent">
            <EditItemTemplate>
                studentId:
                <asp:Label ID="studentIdLabel1" runat="server" Text='<%# Eval("studentId") %>' />
                <br />
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                zip:
                <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                zip:
                <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td class="auto-style1">Student ID:</td>
                        <td>
                            <asp:Label ID="studentIdLabel" runat="server" Text='<%# Eval("studentId") %>' />
                        </td>
                        <td>&nbsp;</td>
                        <td>Address: </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Full Name:</td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                            ,
                            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            ,&nbsp;<asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                            &nbsp;<asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Email Address: </td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsStudentNames" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, lastName + ', ' + firstName AS fullName FROM Student ORDER BY fullName"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="dsOneStudent" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, firstName, lastName, address, city, state, zip, email FROM Student WHERE (studentId = @studentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlStudent" Name="studentId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

