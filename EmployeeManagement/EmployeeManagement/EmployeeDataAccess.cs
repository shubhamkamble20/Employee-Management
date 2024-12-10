using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Reflection;

namespace EmployeeManagement
{
    public class EmployeeDataAccess
    {


        private readonly string connectionString = ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString;

        public DataTable GetEmployeeDetails()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public void InsertEmployee(string Firstname, string Lastname, string Designation, string Location,  string Mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Employees (Firstname, Lastname, Designation, Location, Mobile) VALUES (@Firstname, @Lastname, @Designation, @Location, @Mobile)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Firstname", Firstname);
                cmd.Parameters.AddWithValue("@Lastname", Lastname);
                cmd.Parameters.AddWithValue("@Designation", Designation);
                cmd.Parameters.AddWithValue("@Location", Location);
                cmd.Parameters.AddWithValue("@Mobile", Mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void UpdateEmployee(int PortalId, string Firstname, string Lastname, string Designation, string Location,  string Mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE Employees SET Firstname = @Firstname, Lastname = @Lastname, Designation = @Designation, Location = @Location,  Mobile = @Mobile WHERE PortalId = @PortalId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PortalId", PortalId);
                cmd.Parameters.AddWithValue("@Firstname", Firstname);
                cmd.Parameters.AddWithValue("@Lastname", Lastname);
                cmd.Parameters.AddWithValue("@Designation", Designation);
                cmd.Parameters.AddWithValue("@Location", Location);
                cmd.Parameters.AddWithValue("@Mobile", Mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void DeleteEmployee(int PortalId)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Employees WHERE PortalId = @PortalId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PortalId", PortalId);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}