using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string username = Application["username"].ToString();
            
            string old = txtOldPassword.Text;
            string newpass = txtNewPassword.Text;
            string confirm = txtConfirmNewPassword.Text;

            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from hr where username = '"+username+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            string oldpass="";
            if (dr.Read()) { 
                oldpass = dr["password"].ToString();
            }
            dr.Close();
            if(oldpass == old)
            {
                if (newpass == confirm)
                {
                    SqlCommand cmd2 = new SqlCommand("update hr set password = '"+newpass+"' where username = '"+username+"'", con);
                    cmd2.ExecuteNonQuery();
                }
                else
                {
                    string script = $"alert('Your password and confirm password do not match, please try again!');" + "window.location.href='ChangePassword.aspx';";

                }
            }
            else
            {
                string script = $"alert('The old password you have enetered is not correct!');" + "window.location.href='ChangePassword.aspx';";

            }

            con.Close();
        }
    }
}