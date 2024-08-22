using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class HRlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from hr where username = '" + username + "' and password = '" + password + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string script = $"alert('Login Successful. Redirecting to the dashboard!');" + "window.location.href='HRDashboard.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid username or password!')", true);

            }
            con.Close();
            Application["username"] = txtUsername.Text;
        }
    }
}