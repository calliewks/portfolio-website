<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="multiplerecords.aspx.cs" Inherits="MIS316_examples_multiplerecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="studentId" DataSourceID="dsAllSudents" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" AllowSorting="True" OnPageIndexChanged="gvStudents_PageIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="studentId" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="studentId" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="Zip Code" SortExpression="zip" />
                <asp:BoundField DataField="email" HeaderText="Email Address" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </p>
    <p>
        <asp:DetailsView ID="dvOneStudent" runat="server" AutoGenerateRows="False" DataKeyNames="studentId" DataSourceID="dsOneStudent" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="studentId" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="studentId" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="Zip Code" SortExpression="zip" />
                <asp:BoundField DataField="email" HeaderText="Email Address" SortExpression="email" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
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
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllSudents" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, firstName, lastName, address, city, state, zip, email FROM Student ORDER BY lastName, firstName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsOneStudent" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, firstName, lastName, address, city, state, zip, email FROM Student WHERE (studentId = @studentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvStudents" Name="studentId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

