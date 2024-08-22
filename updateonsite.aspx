<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateonsite.aspx.cs" Inherits="WebApplication4.updateonsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Onsite Project</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #343a40; /* Dark background */
            color: #ffffff; /* White text */
        }
        .container {
            margin-top: 50px;
        }
        .form-control {
            background-color: #495057; /* Darker background for inputs */
            color: #ffffff; /* White text for inputs */
        }
        .form-control:focus {
            background-color: #495057; /* Ensure focus color matches */
            color: #ffffff; /* Ensure text color matches */
            border-color: #007bff; /* Bootstrap blue border on focus */
        }
        .btn-primary {
            background-color: #007bff; /* Bootstrap blue background for buttons */
            border-color: #007bff; /* Bootstrap blue border for buttons */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center mb-4">Update Onsite Project</h1>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="form-group">
                        <label for="employeeId">Employee ID</label>
                        <asp:TextBox ID="txtEmployeeId" runat="server" CssClass="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <label for="details">Details</label>
                        <asp:DropDownList ID="ddlDetails" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Onsite interview scheduled">Onsite interview scheduled</asp:ListItem>
                            <asp:ListItem Value="Onsite interview completed">Onsite interview completed</asp:ListItem>
                            <asp:ListItem Value="Final interview scheduled">Final interview scheduled</asp:ListItem>
                            <asp:ListItem Value="Final interview completed">Final interview completed</asp:ListItem>
                            <asp:ListItem Value="Onsite interview canceled">Onsite interview canceled</asp:ListItem>
                            <asp:ListItem Value="Onsite interview successful">Onsite interview successful</asp:ListItem>
                            <asp:ListItem Value="Onsite interview rescheduled">Onsite interview rescheduled</asp:ListItem>
                            <asp:ListItem Value="Awaiting feedback">Awaiting feedback</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group text-center">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Project" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

