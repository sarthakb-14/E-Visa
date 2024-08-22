<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newvisarequest.aspx.cs" Inherits="WebApplication4.newvisarequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Visa Request</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-datetime-picker@1.3.0/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/moment@2.29.1/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-datetime-picker@1.3.0/build/js/bootstrap-datetimepicker.min.js"></script>
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
            <h1 class="text-center mb-4">New Visa Request</h1>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="form-group">
                        <label for="employeeId">Employee ID</label>
                        <asp:TextBox ID="txtEmployeeId" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="visaType">Visa Type</label>
                        <asp:TextBox ID="txtVisaType" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="requestDate">Expiry Date</label>
                        <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator 
                            ID="rfvExpiryDate" 
                            runat="server" 
                            ControlToValidate="txtExpiryDate" 
                            ErrorMessage="Expiry Date is required" 
                            ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="renewalRequested">Renewal Requested</label>
                        <asp:DropDownList ID="ddlRenewalRequested" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            <asp:ListItem Value="No">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group text-center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Request" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#<%= txtExpiryDate.ClientID %>').datetimepicker({
                    format: 'YYYY-MM-DD HH:mm',
                    useCurrent: false
                });
            });
        </script>
    </form>
</body>
</html>

