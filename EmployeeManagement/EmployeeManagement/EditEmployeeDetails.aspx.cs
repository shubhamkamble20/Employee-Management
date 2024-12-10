using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class EditEmployeeDetails : System.Web.UI.Page
    {
        

        private int PortalId => int.Parse(Request.QueryString["PortalId"]);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployeeDetails();
            }
        }

        private void LoadEmployeeDetails()
        {
            EmployeeDataAccess dataAccess = new EmployeeDataAccess();
            DataTable EmployeeData = dataAccess.GetEmployeeDetails();
            DataRow row = EmployeeData.Select($"PortalId = {PortalId}")[0];

            txtFirstName.Text = row["FirstName"].ToString();
            txtLastName.Text = row["LastName"].ToString();
            txtDesignation.Text = row["Designation"].ToString();
            txtLocation.Text = row["Location"].ToString();
            txtMobile.Text = row["Mobile"].ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            EmployeeDataAccess dataAccess = new EmployeeDataAccess();
            dataAccess.UpdateEmployee(
                PortalId,
                txtFirstName.Text,
                txtLastName.Text,
                txtDesignation.Text,
                txtLocation.Text,
                txtMobile.Text
            );
            Response.Redirect("Default.aspx");
        }
    }
}