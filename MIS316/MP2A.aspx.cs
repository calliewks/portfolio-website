using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_MP2A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        pnlOne.Visible = false;
        pnlTwo.Visible = true;
        string FirstName = txtFirstName.Text;
        string LastName = txtLastName.Text;
        string Major = ddlMajor.SelectedValue;
        lblNameAndMajor.Text = LastName + ", " + FirstName + " (" + Major + ")";
        lblNumberOfCourses.Text = rblCourseHistory.Items.Count.ToString();
        lblCurrentGPA.Text = "0.00";
        lblTotalCredits.Text = "0";
    }

    protected void lbAddANewCourse_Click(object sender, EventArgs e)
    {
        pnlAddANewCourse.Visible = true;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        pnlAddANewCourse.Visible = false;
        txtCoursePrefix.Text = "";
        txtCourseNumber.Text = "";
        ddlGradeEarned.SelectedIndex = 0;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Add courses to radio button list
        string NewCoursePrefix = txtCoursePrefix.Text.ToUpper();
        string NewCourseNumber = txtCourseNumber.Text;
        string GradeEarned = ddlGradeEarned.SelectedItem.Text;
        string CourseDescription = NewCoursePrefix + " " + NewCourseNumber + " (" + GradeEarned + ")";
        ListItem liCourseAdded = new ListItem(CourseDescription, ddlGradeEarned.SelectedValue + txtCoursePrefix.Text + txtCourseNumber.Text);
        rblCourseHistory.Items.Add(liCourseAdded);
        


        //Find Current GPA and total credits
        decimal decGradePoint = 0m;
        int intNumberOfCourses = rblCourseHistory.Items.Count;
        foreach (ListItem liCourse in rblCourseHistory.Items)
        {
            decGradePoint += Convert.ToDecimal(liCourse.Value);
        }
        lblCurrentGPA.Text = ((Math.Round(Convert.ToDecimal(decGradePoint / intNumberOfCourses), 2).ToString()));
        lblTotalCredits.Text = (intNumberOfCourses * 3).ToString();
        lblNumberOfCourses.Text = intNumberOfCourses.ToString();

        pnlAddANewCourse.Visible = false;
        txtCoursePrefix.Text = "";
        txtCourseNumber.Text = "";
        ddlGradeEarned.SelectedIndex = 0;
    }

    protected void lbStartOver_Click(object sender, EventArgs e)
    {
        pnlOne.Visible = true;
        pnlTwo.Visible = false;
        txtFirstName.Text = "";
        txtLastName.Text = "";
        ddlMajor.SelectedIndex = 0;
        lblNumberOfCourses.Text = "unknown";
        lblCurrentGPA.Text = "0.0";
        lblTotalCredits.Text = "0";
        txtCoursePrefix.Text = "";
        txtCourseNumber.Text = "";
        ddlGradeEarned.SelectedIndex = 0;
        rblCourseHistory.Items.Clear();
        btnRemoveSelected.Visible = false;
    }

    protected void btnRemoveSelected_Click(object sender, EventArgs e)
    {
        rblCourseHistory.Items.RemoveAt(rblCourseHistory.SelectedIndex);
        btnRemoveSelected.Visible = false;

        //Add the foreach loop & calculations
        decimal decGradePoint = 0m;
        decimal currentgpa = 0m;
        int intNumberOfCourses = rblCourseHistory.Items.Count;
        foreach (ListItem liCourse in rblCourseHistory.Items)
        {
            decGradePoint += Convert.ToDecimal(liCourse.Value);
        }
        if (intNumberOfCourses != 0)
        {
            currentgpa = (decGradePoint / intNumberOfCourses);
        }

        lblCurrentGPA.Text = currentgpa.ToString("N2");
        lblTotalCredits.Text = (intNumberOfCourses * 3).ToString();
        lblNumberOfCourses.Text = intNumberOfCourses.ToString();
    }

    protected void rblCourseHistory_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRemoveSelected.Visible = true;
    }
}