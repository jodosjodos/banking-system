<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Your Banking Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1, h2, h3 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #888888;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button[type="submit"], .logout-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        button[type="submit"]:hover, .logout-button:hover {
            background-color: #45a049;
        }

        .success-message {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .error-message {
            text-align: center;
            color: #ff4d4d;
            margin-bottom: 10px;
        }

        .logout-form {
            text-align: center;
        }

        .withdraw-button {
            background-color: #ff4d4d;
        }

        .bank-logo {
            display: block;
            margin: 0 auto;
            max-width: 200px;
            height: auto;
        }

        .bank-image {
            width: 100%;
            height: auto;
        }

        .transaction-section {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .transaction-heading {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .transaction-form {
            text-align: center;
            margin-bottom: 20px;
        }

    </style>
</head>
<body>
<% String username = (String) session.getAttribute("username");
    if (username == null || username.isEmpty()) { // User is not logged in, display a message and provide a link for login %>
<div class="container">
    <h1>Welcome to Your Banking Account</h1>
    <p>You haven't logged in yet. Please <a href="login.jsp">log in</a> to access your account.</p>
    <p>done by @jodos</p>
</div>
<% } else { %>
<div class="container">
    <h1>Welcome <%=session.getAttribute("username") %> to Your Banking Account</h1>
    <img src="./images/kcb.png" alt="Bank Logo" class="bank-logo">
    <c:if test="${not empty amount}"> <h3>Your current bank amount is: <span style="color: #4CAF50;">${amount}</span></h3> </c:if>
    <div class="transaction-section">
        <h2 class="transaction-heading">Deposit</h2>
        <form action="deposit" method="post" class="transaction-form">
            <label for="amount">Enter Deposit Amount:</label>
            <input type="number" id="amount" name="depositAmount" required><br>
            <button type="submit">Deposit</button>
        </form>
        <c:if test="${not empty depositError}">
            <p class="error-message">${depositError}</p>
        </c:if>
        <c:if test="${not empty successDeposit}">
            <p class="success-message">${successDeposit}</p>
        </c:if>
    </div>
    <div class="transaction-section">
        <h2 class="transaction-heading">Withdraw</h2>
        <form action="withdraw" method="post" class="transaction-form">
            <label for="withdraw">Enter Withdraw Amount:</label>
            <input type="number" id="withdraw" name="withdraw" required><br>
            <button type="submit" class="withdraw-button">Withdraw</button>
        </form>
        <c:if test="${not empty withdrawError}">
            <p class="error-message">${withdrawError}</p>
        </c:if>
        <c:if test="${not empty successMessage}">
            <p class="success-message">${successMessage}</p>
        </c:if>
    </div>
    <a href="/users">users</a>
    <form action="logout" method="post" class="logout-form">
        <button type="submit" class="logout-button">Logout</button>
    </form>
    <p>done by @jodos</p>
</div>
<%}%>
</body>
</html>
