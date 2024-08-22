using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class AddHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string username = txtHRName.Text;
            string password = txtHRPassword.Text;
            string email = txtHREmail.Text;
            int number = int.Parse(txtHRNumber.Text);
            string role = txtRole.Text;
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into hr values('"+username+"','"+password+"','"+email+"',"+number+",'"+role+"')", con);
            cmd.ExecuteNonQuery();
            string script = $"alert('HR added successfully');" + "window.location.href='AdminDashboard.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            con.Close();
            
        }
    }
}