<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication4.AdminDashboard" %>

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
            <h1 class="text-center mb-4">WELCOME TO THE ADMIN DASHBOARD!</h1>

            <div class="row">
                <!-- Card 1: Add HR -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">HR Management</h5>
                            <asp:Button ID="btnAddHR" runat="server" CssClass="btn btn-primary btn-custom" Text="Add HR" OnClick="btnAddHR_Click" />
                            <asp:Button ID="btnManageHR" runat="server" CssClass="btn btn-secondary btn-custom" Text="Manage HR" OnClick="btnManageHR_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 2: Add Employee -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Employee Management</h5>
                            <asp:Button ID="btnAddEmployee" runat="server" CssClass="btn btn-primary btn-custom" Text="Add Employee" OnClick="btnAddEmployee_Click" />
                            <asp:Button ID="btnManageEmployee" runat="server" CssClass="btn btn-secondary btn-custom" Text="Manage Employee" OnClick="btnManageEmployee_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 3: Visa Status -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Visa Status</h5>
                            <asp:Button ID="btnVisaStatus" runat="server" CssClass="btn btn-primary btn-custom" Text="Visa Status" OnClick="btnVisaStatus_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 4: Applicant Report -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Applicant Report</h5>
                            <asp:Button ID="btnApplicantReport" runat="server" CssClass="btn btn-primary btn-custom" Text="Applicant Report" OnClick="btnApplicantReport_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 5: Interview Report -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Interview Report</h5>
                            <asp:Button ID="btnInterviewReport" runat="server" CssClass="btn btn-primary btn-custom" Text="Interview Report" OnClick="btnInterviewReport_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 6: Result Report -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Result Report</h5>
                            <asp:Button ID="btnResultReport" runat="server" CssClass="btn btn-primary btn-custom" Text="Result Report" OnClick="btnResultReport_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 7: Onsite Report -->
                <div class="col-md-4">
                    <div class="card card-custom">
                        <div class="card-body">
                            <h5 class="card-title">Onsite Report</h5>
                            <asp:Button ID="btnOnsiteReport" runat="server" CssClass="btn btn-primary btn-custom" Text="Onsite Report" OnClick="btnOnsiteReport_Click" />
                        </div>
                    </div>
                </div>

                <!-- Card 8: Feedback -->
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


