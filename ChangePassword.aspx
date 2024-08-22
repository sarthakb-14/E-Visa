<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication4.ChangePassword" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Change Password</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #343a40; /* Dark background color */
            color: #e9ecef; /* Light text color for contrast */
        }
        .form-container {
            max-width: 500px;
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
            width: 50%; /* Button width */
            margin: 20px auto; /* Center the button */
            display: block; /* Ensure button is a block element for centering */
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
            <h2 class="text-center mb-4">Change Password</h2>
            
            <div class="form-group">
                <label for="txtOldPassword">Old Password</label>
                <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control" placeholder="Enter old password" TextMode="Password" />
            </div>

            <div class="form-group">
                <label for="txtNewPassword">New Password</label>
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" placeholder="Enter new password" TextMode="Password" />
            </div>

            <div class="form-group">
                <label for="txtConfirmNewPassword">Confirm New Password</label>
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" CssClass="form-control" placeholder="Confirm new password" TextMode="Password" />
            </div>

            <div class="form-group text-center">
                <asp:Button ID="btnChangePassword" runat="server" CssClass="btn btn-primary btn-custom" Text="CHANGE PASSWORD" OnClick="btnChangePassword_Click" />
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (Optional for full functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

