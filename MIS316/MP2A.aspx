<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagecdw1107.master" AutoEventWireup="true" CodeFile="MP2A.aspx.cs" Inherits="MIS316_MP2A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Grade Summary System</h1>
    <asp:Panel ID="pnlOne" runat="server">
        <table>
            <tr>
                <td>First Name: </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Major:</td>
                <td>
                    <asp:DropDownList ID="ddlMajor" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Business Analytics">BA</asp:ListItem>
                        <asp:ListItem Value="Information Technology">IT</asp:ListItem>
                        <asp:ListItem Value="Management Information Systems">MIS</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvMajor" runat="server" ControlToValidate="ddlMajor" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="Continue" />
    </asp:Panel>
    <asp:Panel ID="pnlTwo" runat="server" Visible="False">
        <h3>
            <asp:Label ID="lblNameAndMajor" runat="server"></asp:Label>
        </h3>
        <br />
        <table>
            <tr>
                <td style="vertical-align: top"><span class="auto-style1"><strong>Course History</strong></span><span> </span>(<asp:LinkButton ID="lbAddANewCourse" runat="server" OnClick="lbAddANewCourse_Click">Add a New Course</asp:LinkButton>
                    )<br />
                    <asp:RadioButtonList ID="rblCourseHistory" runat="server" OnSelectedIndexChanged="rblCourseHistory_SelectedIndexChanged" AutoPostBack="True">
                    </asp:RadioButtonList>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" Visible="False" CausesValidation="False" OnClick="btnRemoveSelected_Click" />
                </td>
                <td>
                    <asp:Panel ID="pnlAddANewCourse" runat="server" BackColor="#FFFFCC" Visible="False">
                        <table>
                            <tr>
                                <td>Course Prefix: </td>
                                <td>
                                    <asp:TextBox ID="txtCoursePrefix" runat="server" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCoursePrefix" runat="server" ControlToValidate="txtCoursePrefix" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Course Number:</td>
                                <td>
                                    <asp:TextBox ID="txtCourseNumber" runat="server" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCourseNumber" runat="server" ControlToValidate="txtCourseNumber" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Grade Earned</td>
                                <td>
                                    <asp:DropDownList ID="ddlGradeEarned" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem Value="4.00">A</asp:ListItem>
                                        <asp:ListItem Value="3.67">A-</asp:ListItem>
                                        <asp:ListItem Value="3.33">B+</asp:ListItem>
                                        <asp:ListItem Value="3.00">B</asp:ListItem>
                                        <asp:ListItem Value="2.67">B-</asp:ListItem>
                                        <asp:ListItem Value="2.33">C+</asp:ListItem>
                                        <asp:ListItem Value="2.00">C</asp:ListItem>
                                        <asp:ListItem Value="1.67">C-</asp:ListItem>
                                        <asp:ListItem Value="1.33">D+</asp:ListItem>
                                        <asp:ListItem Value="1.00">D</asp:ListItem>
                                        <asp:ListItem Value="0.67">D-</asp:ListItem>
                                        <asp:ListItem Value="0.00">F</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvGradeEarned" runat="server" ControlToValidate="ddlGradeEarned" ErrorMessage="*" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" ValidationGroup="cancelcourse" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="auto-style1"><strong>Summary</strong></span><table>
                        <tr>
                            <td>Number of Courses: </td>
                            <td>
                                <asp:Label ID="lblNumberOfCourses" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Current GPA:</td>
                            <td>
                                <asp:Label ID="lblCurrentGPA" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Total Credits:</td>
                            <td>
                                <asp:Label ID="lblTotalCredits" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    * assuming all courses are 3 credits<br />
                    <br />
                    <asp:LinkButton ID="lbStartOver" runat="server" OnClick="lbStartOver_Click">Start Over</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <p>
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
    <p>
    </p>
</asp:Content>

