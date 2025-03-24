<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="advancedqueries.aspx.cs" Inherits="MIS316_examples_advancedqueries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        DDL with all students:
        <asp:DropDownList ID="ddlAllStudents" runat="server" DataSourceID="dsAllStudents" DataTextField="fullName" DataValueField="studentId">
        </asp:DropDownList>
    </p>
    <p>
        DDL with only students scheduled for at least one course:
        <asp:DropDownList ID="ddlRestrictedStudents" runat="server" DataSourceID="dsRestrictedStudents" DataTextField="fullName" DataValueField="studentId">
        </asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="gvAllCourses" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="courseId" DataSourceID="dsAllCourses" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" />
                <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
                <asp:BoundField DataField="courseDescription" HeaderText="courseDescription" SortExpression="courseDescription" />
                <asp:BoundField DataField="NumberOfStudents" HeaderText="NumberOfStudents" ReadOnly="True" SortExpression="NumberOfStudents" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
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
    </p>
    <p>
        <asp:SqlDataSource ID="dsAllStudents" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT studentId, lastName + ',' + firstName AS fullName FROM Student ORDER BY fullName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsRestrictedStudents" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT DISTINCT Student.studentId, Student.lastName + ',' + Student.firstName AS fullName FROM Student INNER JOIN Schedule ON Student.studentId = Schedule.studentId ORDER BY fullName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsAllCourses" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT Course.courseId, Course.courseName, Course.courseDescription, COUNT(Student.studentId) AS NumberOfStudents FROM Course INNER JOIN Schedule ON Course.courseId = Schedule.courseId INNER JOIN Student ON Schedule.studentId = Student.studentId GROUP BY Course.courseId, Course.courseName, Course.courseDescription ORDER BY Course.courseName"></asp:SqlDataSource>
    </p>
</asp:Content>

