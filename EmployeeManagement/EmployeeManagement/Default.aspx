<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManagement._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

        <!-- Create New Booking Button -->
        <div class="text-start mb-3">
            <button class="btn btn-success" onclick="window.location.href='AddNewEmployee.aspx'; return false;">Add New Employee</button>
        </div>

        <!-- GridView Table -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
            <Columns>
                <asp:BoundField DataField="PortalId" HeaderText="Portal Id" SortExpression="PortalId" />
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Date" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EmployeeDetails.aspx?PortalId=<%# Eval("PortalId") %>" class="btn btn-info btn-sm">
                        <i class="fas fa-info-circle"></i> Details 
                        </a>                           
                         <a href="EditEmployeeDetails.aspx?PortalId=<%# Eval("PortalId") %>" class="btn btn-warning btn-sm">
                           <i class="fas fa-edit"></i> Edit
                         </a>
                         <a href="DeleteEmployeeDetails.aspx?PortalId=<%# Eval("PortalId") %>" class="btn btn-danger btn-sm">
                               <i class="fas fa-trash"></i> Delete
                         </a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
