using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement
{
    public partial class _Default : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            EmployeeDataAccess dataAccess = new EmployeeDataAccess();
            GridView1.DataSource = dataAccess.GetEmployeeDetails();
            GridView1.DataBind();
        }


    }
}