using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class newvisarequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int eid = int.Parse(txtEmployeeId.Text);
            string visatype = txtVisaType.Text;
            string exp = (txtExpiryDate.Text);
            string renewal = ddlRenewalRequested.SelectedValue;

            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into VisaStatus values("+eid+",'"+visatype+"','"+exp+"','"+renewal+"')", con);
            cmd.ExecuteNonQuery();
            string script = $"alert('Visa status updated!');" + "window.location.href='HRDashboard.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            con.Close();

        }
    }
}