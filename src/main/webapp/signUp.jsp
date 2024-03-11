<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 12/02/2024
  Time: 5:13 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KCB Bank - Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            color: #007f3f;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="password"],
        select {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007f3f;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        p {
            text-align: center;
            color: #888888;
        }

        a {
            color: #007f3f;
            text-decoration: none;
        }

        .bank-logo {
            display: block;
            margin: 0 auto;
            width: 150px;
            height: auto;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<h1>KCB Bank - Sign Up</h1>

<form action="signUp" method="post">
    <img src="./images/kcb.png" alt="KCB Bank Logo" class="bank-logo">
    <input type="text" name="username" id="username" placeholder="Username" required/>

    <input type="email" name="email" id="email" placeholder="Email" required/>
    <input type="password" name="password" id="password" placeholder="Password" required/>
    <input type="number" name="age" id="age" placeholder="Age" required/>
    <input type="number" name="amount" id="amount" placeholder="Initial Deposit Amount" required/>
    <select name="bankType" id="bankType" required>
        <option value="">Select Account Type</option>
        <option value="current account">Current Account</option>
        <option value="saving account">Savings Account</option>
    </select>
    <input type="submit" value="Sign Up">
    <p>Already have an account? <a href="login.jsp">Login</a></p>
</form>
</body>
</html>