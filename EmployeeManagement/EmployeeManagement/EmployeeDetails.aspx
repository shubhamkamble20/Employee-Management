<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="EmployeeManagement.EmployeeDetails" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #fdfbfb, #ebedee);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Ticket Card */
        .ticket-card {
            background: #ffffff;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 450px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .ticket-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        /* Header */
        .ticket-header {
            background: linear-gradient(120deg, #007bff, #0056b3);
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1.5em;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Content */
        .ticket-content {
            padding: 20px;
            font-size: 0.95em;
            color: #333;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .column {
            flex: 1;
            margin: 0 10px;
        }

        .column label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #555;
        }

        .column asp\:Label {
            display: block;
            font-size: 1.1em;
            color: #333;
        }

        /* Footer */
        .ticket-footer {
            background: #f8f9fa;
            padding: 15px;
            text-align: center;
            font-size: 0.9em;
            color: #666;
            border-top: 1px solid #ddd;
        }

        .ticket-footer a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .ticket-footer a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ticket-card">
            <div class="ticket-header">
                Employee Details
            </div>
            <div class="ticket-content">
                <!-- Row 1 -->
                <div class="row">
                    <div class="column">
                        <label>Portal ID:</label>
                        <asp:Label ID="lblPortalId" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <!-- Row 2 -->
                <div class="row">
                    <div class="column">
                        <label>First Name:</label>
                        <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="column">
                        <label>Last Name:</label>
                        <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <!-- Row 3 -->
                <div class="row">
                    <div class="column">
                        <label>Designation:</label>
                        <asp:Label ID="lblDesignation" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="column">
                        <label>Location:</label>
                        <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <!-- Row 4 -->
                <div class="row">
                    <div class="column">
                        <label>Mobile:</label>
                        <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="ticket-footer">
                <a href="Default.aspx">Go Back</a>
            </div>
        </div>
    </form>
</body>
</html>


