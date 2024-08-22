using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class HRDashboard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Application["username"].ToString();
            Label1.Text = username;
        }

        protected void btnViewEmployees_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewemployees.aspx");

        }

        protected void btnNewVisaRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("newvisarequest.aspx");

        }

        protected void btnUpdateVisaRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatevisarequest.aspx");

        }

        protected void btnReporting_Click(object sender, EventArgs e)
        {
            Response.Redirect("visastatus.aspx");

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("ChangePassword.aspx");

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackForm.aspx");
        }
    }
}