using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int PortalId = Convert.ToInt32(Request.QueryString["PortalId"]);
                LoadEmployeeDetails(PortalId);
            }
        }

        private void LoadEmployeeDetails(int PortalId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Employees WHERE PortalId = @PortalId", conn);
                cmd.Parameters.AddWithValue("@PortalId", PortalId);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    lblPortalId.Text = reader["PortalId"].ToString();
                    lblFirstName.Text = reader["Firstname"].ToString();
                    lblLastName.Text = reader["Lastname"].ToString();
                    lblDesignation.Text = reader["Designation"].ToString();
                    lblLocation.Text = reader["Location"].ToString();
                    lblMobile.Text = reader["Mobile"].ToString();
                }
            }
        }



    }
}