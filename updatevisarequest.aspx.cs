using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class updatevisarequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int vid = int.Parse(txtVisaId.Text);
            string renewal = ddlRenewalRequested.SelectedValue;

            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("update VisaStatus set renewalrequested = '"+renewal+"' where visaid = "+vid+"", con);
            cmd.ExecuteNonQuery();
            string script = $"alert('Visa status updated!');" + "window.location.href='HRDashboard.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            con.Close();
        }
    }
}