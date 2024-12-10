using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class AddNewEmployee : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            EmployeeDataAccess dataAccess = new EmployeeDataAccess();
            dataAccess.InsertEmployee(
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
