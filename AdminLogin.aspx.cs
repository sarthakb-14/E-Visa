using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from admin where username = '"+username+"' and password = '"+password+"'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read()) {
                string script = $"alert('Login Successful. Redirecting to the dashboard!');" + "window.location.href='AdminDashboard.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid username or password!')", true);

            }
            con.Close();
        }
    }
}