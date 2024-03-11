<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
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
            color: #4CAF50;
            font-size: 30px;
        }

        .success-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .success-message {
            color: #4CAF50;
            text-align: center;
            font-size: 20px;
            margin-bottom: 30px;
        }

        .emoji {
            font-size: 60px;
            margin-bottom: 10px;
            display: block;
            text-align: center;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }

        .link {
            color: #4CAF50;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .link:hover {
            color: #45A049;
        }

        .success-details {
            margin-top: 30px;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
        }

        .detail-label {
            font-weight: bold;
        }

        .detail-value {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="success-container">
    <h1>Account Created Successfully</h1>
    <p class="success-message"><span class="emoji">🎉</span> ${success}</p>
    <p class="login-link">Now you can <a href="login.jsp" class="link">login</a> to your account.</p>
</div>
</body>
</html>