<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="WebApplication4.AddEmployee" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Employee</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #343a40; /* Dark background color */
            color: #e9ecef; /* Light text color for contrast */
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #495057; /* Dark form background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            background-color: #6c757d; /* Dark input background */
            border-color: #6c757d; /* Dark border color */
            color: #ffffff; /* Light text color in inputs */
        }
        .form-control:focus {
            background-color: #6c757d;
            border-color: #007bff; /* Highlight border color on focus */
            box-shadow: none; /* Remove default box-shadow on focus */
        }
        .btn-custom {
            margin-top: 20px;
        }
        .btn-primary {
            background-color: #007bff; /* Custom blue for primary buttons */
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
            border-color: #004085;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container form-container">
            <h2 class="text-center mb-4">Add Employee</h2>
            
            <div class="form-group">
                <label for="txtUsername">Employee Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username" />
            </div>

            <div class="form-group">
                <label for="txtEmail">Employee Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email" />
            </div>

            <div class="form-group">
                <label for="txtPassword">Employee Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password" />
            </div>

            <div class="form-group">
                <label for="txtNumber">Employee Number</label>
                <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" placeholder="Enter number" TextMode="Number" />
            </div>

            <div class="form-group">
                <label for="txtRole">Role</label>
                <asp:TextBox ID="txtRole" runat="server" CssClass="form-control" placeholder="Enter role" />
            </div>

            <div class="form-group text-center">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-custom" Text="ADD" OnClick="btnAdd_Click" />
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (Optional for full functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

