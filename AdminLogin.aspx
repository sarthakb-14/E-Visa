<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            max-width: 400px;
            margin-top: 100px;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            border-radius: 0.25rem;
        }
        .btn-custom {
            border-radius: 0.25rem;
            padding: 10px;
        }
        .text-center {
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="login-container">
                <h2 class="text-center">Admin Login</h2>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control mb-3" placeholder="Username" />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-4" TextMode="Password" placeholder="Password" />
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-custom btn-block w-50" Text="Login" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (Optional for full functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

