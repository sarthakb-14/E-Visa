using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ViewEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtHRName.Text = Request.QueryString["username"];
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from employee where username = '" + txtHRName.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtHRName.Text = dr["username"].ToString();
                txtHREmail.Text = dr["email"].ToString();
                txtHRNumber.Text = dr["number"].ToString();
                txtHRPassword.Text = dr["password"].ToString();
                txtRole.Text = dr["role"].ToString();
            }
            else
            {
                string script = $"alert('Employee does not exist');" + "window.location.href='ManageEmployee.aspx';";

            }

        }


    }
}