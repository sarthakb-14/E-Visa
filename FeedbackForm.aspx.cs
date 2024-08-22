using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class FeedbackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string script = $"alert('Feedback submitted successfully!');" + "window.location.href='FeedbackForm.aspx';";

            txtFeedback.Text = "";
            txtUsername.Text = "";

        }
    }
}