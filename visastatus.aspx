<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="visastatus.aspx.cs" Inherits="WebApplication4.visastatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visa Status List</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #343a40; /* Dark background */
            color: #ffffff; /* White text */
        }
        .table {
            background-color: #495057; /* Darker background for table */
        }
        .table th, .table td {
            color: #ffffff; /* White text for table */
        }
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center mb-4">Visa Status List</h1>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" >
            </asp:GridView>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

