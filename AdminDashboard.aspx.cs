using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddHR_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddHR.aspx");
        }

        protected void btnManageHR_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageHR.aspx");
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        protected void btnManageEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEmployee.aspx");
        }

        protected void btnVisaStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("visastatus.aspx");

        }

        protected void btnApplicantReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("applicantreport.aspx");

        }

        protected void btnInterviewReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("interviewreport.aspx");

        }

        protected void btnResultReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("resultreport.aspx");

        }

        protected void btnOnsiteReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("onsitereport.aspx");

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackForm.aspx");
        }
    }
}