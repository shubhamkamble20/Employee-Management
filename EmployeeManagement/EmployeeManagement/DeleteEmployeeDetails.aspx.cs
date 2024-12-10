using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class DeleteEmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int PortalId => int.Parse(Request.QueryString["PortalId"]);

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            EmployeeDataAccess dataAccess = new EmployeeDataAccess();
            dataAccess.DeleteEmployee(PortalId);
            Response.Redirect("Default.aspx");
        }
    }
}