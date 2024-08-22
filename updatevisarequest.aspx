<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatevisarequest.aspx.cs" Inherits="WebApplication4.updatevisarequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Visa Request</title>
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
            <h1 class="text-center mb-4">Update Visa Request</h1>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="form-group">
                        <label for="visaId">Visa ID</label>
                        <asp:TextBox ID="txtVisaId" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="renewalRequested">Renewal Requested</label>
                        <asp:DropDownList ID="ddlRenewalRequested" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            <asp:ListItem Value="No">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group text-center">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

