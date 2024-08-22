using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class EditEmployee : System.Web.UI.Page
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
                string script = $"alert('Employee does not exist');" + "window.location.href='ManageHR.aspx';";

            }

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string connectionString = "uid=sa; password=manager@123; database=sarthak; server=DK27QV3\\SQLEXPRESS";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                try
                {
                    string username = txtHRName.Text;
                    string email = txtHREmail.Text;
                    string password = txtHRPassword.Text;
                    string role = txtRole.Text;
                    int number = int.Parse(txtHRNumber.Text);

                    // Construct the SQL update query
                    string query = $"UPDATE employee SET username = '{username}', email = '{email}', role = '{role}' WHERE number = {number}";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        int rowsAffected = cmd.ExecuteNonQuery();

                        // Notify user of the result
                        if (rowsAffected > 0)
                        {
                            string script = "alert('Employee details updated successfully!'); window.location.href='ManageEmployee.aspx';";
                            ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
                        }
                        else
                        {
                            string script = "alert('No Employee details were updated. Please check the Employee number and try again.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    string script = $"alert('An error occurred: {ex.Message}');";
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}