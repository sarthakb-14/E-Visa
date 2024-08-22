<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditHR.aspx.cs" Inherits="WebApplication4.EditHR" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit HR Details</title>
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
            padding: 30px;
            background: #495057; /* Dark form background */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-group label {
            color: #e9ecef; /* Light color for labels */
        }
        .btn-custom {
            border-radius: 0.25rem;
        }
        .btn-primary {
            background-color: #007bff; /* Custom blue for primary buttons */
            border-color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <h2 class="text-center mb-4">Edit HR Details</h2>

                <div class="form-group">
                    <label for="txtHRName">HR Name</label>
                    <asp:TextBox ID="txtHRName" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtHREmail">HR Email</label>
                    <asp:TextBox ID="txtHREmail" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtHRPassword">HR Password</label>
                    <asp:TextBox ID="txtHRPassword" runat="server" CssClass="form-control" TextMode="Password" />
                </div>

                <div class="form-group">
                    <label for="txtHRNumber">HR Number</label>
                    <asp:TextBox ID="txtHRNumber" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtRole">Role</label>
                    <asp:TextBox ID="txtRole" runat="server" CssClass="form-control" />
                </div>

                <!-- Edit Button -->
                <div class="form-group text-center">
                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary btn-custom" Text="Edit" OnClick="btnEdit_Click" />
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
