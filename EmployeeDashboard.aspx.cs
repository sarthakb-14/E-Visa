using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Application["uname"].ToString();
            Label1.Text = username;
        }

        protected void btnOnsiteDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("onsitereport.aspx");

        }

        protected void btnUpdateOnsiteProject_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateonsite.aspx");

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackForm.aspx");
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePasswordE.aspx");

        }
    }
}