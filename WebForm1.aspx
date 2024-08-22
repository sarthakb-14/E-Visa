<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>


<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            max-width: 500px;
            margin :auto;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
            margin: 10px 0;
        }
        .header-text {
            font-size: 1.5rem;
            color: #343a40;
        }
        .page-title {
            margin-top: 20px;
            margin-bottom: 40px;
            font-size: 2.5rem;
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <!-- Page Title -->
            <div class="page-title">Login Page</div>
            
            <!-- Login Form Container -->
            <div class="login-container text-center">
                <h1 class="header-text">What are you?</h1>
                <asp:Button ID="btnAdmin" runat="server" CssClass="btn btn-primary btn-custom" Text="ADMIN" OnClick="btnAdmin_Click" />
                <asp:Button ID="btnHR" runat="server" CssClass="btn btn-secondary btn-custom" Text="HR" OnClick="btnHR_Click" />
                <asp:Button ID="btnEmployee" runat="server" CssClass="btn btn-success btn-custom" Text="EMPLOYEE" OnClick="btnEmployee_Click" />
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (Optional for full functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

