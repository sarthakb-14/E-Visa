using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ManageEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string username = txtHRUsername.Text;
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from employee where username = '"+username+"'", con);
            cmd.ExecuteNonQuery();
            string script = $"alert('Employee deleted successfully!');" + "window.location.href='ManageEmployee.aspx';";
            ClientScript.RegisterStartupScript(this.GetType(), "alertAndRedirect", script, true);
            con.Close();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string url;
            url = "EditEmployee.aspx?username=" + txtHRUsername.Text;
            Response.Redirect(url);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            string url;
            url = "ViewEmployee.aspx?username=" + txtHRUsername.Text;
            Response.Redirect(url);
        }
    }
}