<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditEmployeeDetails.aspx.cs" Inherits="EmployeeManagement.EditEmployeeDetails" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Edit Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .booking-form {
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .booking-form h2 {
            text-align: center;
            color: #007bff;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="time"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="date"]:focus,
        .form-group input[type="time"]:focus {
            outline: none;
            border-color: #007bff;
        }

        .form-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .form-buttons input[type="submit"],
        .form-buttons a {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .form-buttons a {
            background-color: #6c757d;
        }

        .form-buttons input[type="submit"]:hover,
        .form-buttons a:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="booking-form">
            <h2>Edit Employee Details</h2>

            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtDesignation">Designation:</label>
                <asp:TextBox ID="txtDesignation" runat="server" />
                <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" ControlToValidate="txtDesignation"
                    ErrorMessage="Designation is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtLocation">Location:</label>
                <asp:TextBox ID="txtLocation" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation"
                    ErrorMessage="Location is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-buttons">
                <a href="Default.aspx">Go Back</a>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </form>
</body>
</html>