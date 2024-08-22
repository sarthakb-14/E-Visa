<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="WebApplication4.EmployeeDashboard" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Dashboard</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #343a40; /* Dark background color */
            color: #e9ecef; /* Light text color for contrast */
        }
        .dashboard-container {
            margin: 20px;
        }
        .card-custom {
            margin-bottom: 20px;
            background-color: #495057; /* Dark card background */
            border: 1px solid #6c757d; /* Border color */
        }
        .card-title {
            color: #ffffff; /* White text color for card titles */
        }
        .card-body {
            display: flex;
            flex-direction: column;
        }
        .btn-custom {
            margin: 5px 0;
            border-radius: 0.25rem;
        }
        .btn-primary {
            background-color: #007bff; /* Custom blue for primary buttons */
            border-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d; /* Custom gray for secondary buttons */
            border-color: #6c757d;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container dashboard-container">
            <h1 class="text-center mb-4">WELCOME TO THE EMPLOYEE DASHBOARD
                <asp:Label ID="Label1" runat="server"></asp:Label>
                !</h1>

            <div class="row">
                <!-- Card 1: Onsite Details -->
                <div class="col-md-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Onsite Details</h5>
                            <asp:Button ID="btnOnsiteDetails" runat="server" CssClass="btn btn-primary btn-custom" Text="Onsite Details" OnClick="btnOnsiteDetails_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 2: Update Onsite Project -->
                <div class="col-md-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Update Onsite Project</h5>
                            <asp:Button ID="btnUpdateOnsiteProject" runat="server" CssClass="btn btn-primary btn-custom" Text="Update Project" OnClick="btnUpdateOnsiteProject_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 3: Feedback -->
                <div class="col-md-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Feedback</h5>
                            <asp:Button ID="btnFeedback" runat="server" CssClass="btn btn-primary btn-custom" Text="Feedback" OnClick="btnFeedback_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 4: Change Password -->
                <div class="col-md-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Change Password</h5>
                            <asp:Button ID="btnChangePassword" runat="server" CssClass="btn btn-primary btn-custom" Text="Change Password" OnClick="btnChangePassword_Click" />
                        </div>
                    </div>
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

