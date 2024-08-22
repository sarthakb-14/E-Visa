<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageEmployee.aspx.cs" Inherits="WebApplication4.ManageEmployee" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manage Employee</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #343a40; /* Dark background color */
            color: #e9ecef; /* Light text color for contrast */
        }
        .container {
            margin-top: 30px;
        }
        .card {
            background-color: #495057; /* Dark card background */
            border: 1px solid #6c757d; /* Border color */
        }
        .card-title {
            color: #ffffff; /* White text color for card titles */
        }
        .btn-custom {
            margin: 5px 10px;
        }
        .btn-primary {
            background-color: #007bff; /* Custom blue for primary buttons */
            border-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d; /* Custom gray for secondary buttons */
            border-color: #6c757d;
        }
        .btn-danger {
            background-color: #dc3545; /* Custom red for danger buttons */
            border-color: #dc3545;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Manage Employee</h5>
                    <div class="form-group">
                        <label for="txtHRUsername">Employee Username</label>
                        <asp:TextBox ID="txtHRUsername" runat="server" CssClass="form-control" placeholder="Enter Employee username" />
                    </div>
                    <div class="button-container">
                        <asp:Button ID="btnView" runat="server" CssClass="btn btn-primary btn-custom" Text="View" OnClick="btnView_Click" />
                        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-secondary btn-custom" Text="Edit" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger btn-custom" Text="Delete" OnClick="btnDelete_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

