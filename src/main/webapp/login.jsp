<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            color: #007f3f; /* KCB green color */
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        input[type="email"],
        input[type="password"], select {
            display: block;
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #007f3f; /* KCB green color */
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #005228; /* Darker shade of green on hover */
        }

        p {
            text-align: center;
            margin-top: 20px;
            color: #888888;
            font-size: 16px;
        }

        a {
            color: #007f3f; /* KCB green color */
            text-decoration: none;
            font-weight: bold;
        }

        select {
            padding: 12px;
        }
    </style>
</head>
<body>
<h1>Login to KCB Bank</h1>
<form action="login" method="post">
    <input type="email" name="email" id="email" placeholder="Enter your email">
    <input type="password" name="password" id="password" placeholder="Enter your password">
    <select name="bankType" id="bankType">
        <option value="current account">Current Account</option>
        <option value="saving account">Savings Account</option>
    </select>
    <input type="submit" value="Login">
    <p>Don't have an account? <a href="signUp.jsp">Sign Up</a></p>
</form>
</body>
</html>
