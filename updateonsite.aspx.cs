using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class updateonsite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int eid = int.Parse(txtEmployeeId.Text);
           DateTime dt = DateTime.Now;
            string details = ddlDetails.SelectedValue;

            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("update OnsiteReport set details = '"+details+"', reportdate = '"+dt+"' where employeeid = "+eid+"", con);
            cmd.ExecuteNonQuery();
            string script = $"alert('Onsite Report updated successfully!');" + "window.location.href='EmployeeDashboard.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            con.Close();
        }
    }
}