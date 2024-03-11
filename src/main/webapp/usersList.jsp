<%@ page import="com.mvc.bankingsystem.dto.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KCB Bank - Customer List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007f3f;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007f3f; /* KCB green color */
            color: #ffffff; /* White text color */
            font-weight: bold;
            text-transform: uppercase;
        }

        td {
            background-color: #ffffff; /* White background color */
        }

        tr:hover {
            background-color: #f2f2f2; /* Light gray background on hover */
        }

        .logo {
            display: block;
            margin: 0 auto;
            margin-bottom: 20px;
        }

        .description {
            text-align: center;
            margin-bottom: 30px;
            color: #888888;
        }
        .footer {
            margin-top: 50px;
            background-color: #4CAF50;
            color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            font-size: 16px;
        }

    </style>
</head>
<body>
<div class="container">
    <img src="./images/kcb.png" alt="KCB Logo" class="logo">
    <h1>KCB Bank - Customer List</h1>
    <p class="description">
        Below is the list of all registered customers of KCB Bank. You can view their details here.
    </p>

    <table>
        <thead>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Password</th>
            <th>Bank Type</th>
            <th>Age</th>
            <th>Amount</th>
        </tr>
        </thead>
        <tbody>
        <% for (User user : (List<User>) request.getAttribute("users")) { %>
        <tr>
            <td><%= user.getUsername() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getPassword() %></td>
            <td><%= user.getBanktype() %></td>
            <td><%= user.getAge() %></td>
            <td><%= user.getAmount() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<div class="footer">
    &copy; 2022 KCB Bank. All rights reserved.
</div>
</body>
</html>
