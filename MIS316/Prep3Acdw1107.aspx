<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="Prep3Acdw1107.aspx.cs" Inherits="MIS316_Prep3Acdw1107" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Select a Course:
        <asp:DropDownList ID="ddlCourses" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" DataSourceID="dsCourseNames" DataTextField="courseName" DataValueField="courseId">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCourses" runat="server" ControlToValidate="ddlCourses" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:FormView ID="fvOneCourse" runat="server" DataKeyNames="courseId,instructorId" DataSourceID="dsOneCourse">
            <EditItemTemplate>
                courseId:
                <asp:Label ID="courseIdLabel1" runat="server" Text='<%# Eval("courseId") %>' />
                <br />
                courseName:
                <asp:TextBox ID="courseNameTextBox" runat="server" Text='<%# Bind("courseName") %>' />
                <br />
                courseDescription:
                <asp:TextBox ID="courseDescriptionTextBox" runat="server" Text='<%# Bind("courseDescription") %>' />
                <br />
                instructorId:
                <asp:Label ID="instructorIdLabel1" runat="server" Text='<%# Eval("instructorId") %>' />
                <br />
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                courseName:
                <asp:TextBox ID="courseNameTextBox" runat="server" Text='<%# Bind("courseName") %>' />
                <br />
                courseDescription:
                <asp:TextBox ID="courseDescriptionTextBox" runat="server" Text='<%# Bind("courseDescription") %>' />
                <br />
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td><strong>Course Number:</strong></td>
                        <td>
                            <asp:Label ID="courseNameLabel" runat="server" Text='<%# Bind("courseName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Course Title:</strong></td>
                        <td>
                            <asp:Label ID="courseDescriptionLabel" runat="server" Text='<%# Bind("courseDescription") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Instructor Name: </strong></td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                            ,
                            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="dsCourseNames" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT courseId, courseName FROM Course ORDER BY courseName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsOneCourse" runat="server" ConnectionString="<%$ ConnectionStrings:mis316CourseSchedulingConnectionString %>" SelectCommand="SELECT Course.courseId, Course.courseName, Course.courseDescription, Instructor.instructorId, Instructor.firstName, Instructor.lastName FROM Course INNER JOIN Instructor ON Course.instructorId = Instructor.instructorId WHERE (Course.courseId = @courseId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCourses" Name="courseId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

