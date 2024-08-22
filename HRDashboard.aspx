<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRDashboard.aspx.cs" Inherits="WebApplication4.HRDashboard" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard</title>
    
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
            <h1 class="text-center mb-4">WELCOME TO THE HR DASHBOARD
                <asp:Label ID="Label1" runat="server"></asp:Label>
                !</h1>

            <div class="row">
                <!-- Card 1: View Employees -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">View Employees</h5>
                            <asp:Button ID="btnViewEmployees" runat="server" CssClass="btn btn-primary btn-custom" Text="View Employees" OnClick="btnViewEmployees_Click"/>
                        </div>
                    </div>
                </div>

                <!-- Card 2: New Visa Request -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">New Visa Request</h5>
                            <asp:Button ID="btnNewVisaRequest" runat="server" CssClass="btn btn-primary btn-custom" Text="New Visa Request" OnClick="btnNewVisaRequest_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 3: Update Visa Request -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Update Visa Request</h5>
                            <asp:Button ID="btnUpdateVisaRequest" runat="server" CssClass="btn btn-primary btn-custom" Text="Update Visa Request" OnClick="btnUpdateVisaRequest_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 4: Reporting -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Reporting</h5>
                            <asp:Button ID="btnReporting" runat="server" CssClass="btn btn-primary btn-custom" Text="Reporting" OnClick="btnReporting_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 5: Change Password -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Change Password</h5>
                            <asp:Button ID="btnChangePassword" runat="server" CssClass="btn btn-primary btn-custom" Text="Change Password" OnClick="btnChangePassword_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 6: Feedback -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Feedback</h5>
                            <asp:Button ID="btnFeedback" runat="server" CssClass="btn btn-primary btn-custom" Text="Feedback" OnClick="btnFeedback_Click" />
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

