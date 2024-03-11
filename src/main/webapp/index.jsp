<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to KCB Bank</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .logo {
            max-width: 200px;
            margin-bottom: 20px;
        }

        h1 {
            color: #4CAF50;
            font-size: 36px;
            margin-bottom: 20px;
        }

        p {
            margin-top: 20px;
            color: #888888;
            font-size: 18px;
            line-height: 1.6;
        }

        .button {
            display: inline-block;
            padding: 12px 24px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .footer {
            margin-top: 50px;
            background-color: #4CAF50;
            color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            font-size: 16px;
        }

        .social-icons {
            margin-top: 20px;
        }

        .social-icons a {
            display: inline-block;
            margin: 0 10px;
            color: #ffffff;
            font-size: 24px;
            transition: transform 0.3s ease;
        }

        .social-icons a:hover {
            transform: scale(1.2);
        }

        .features {
            margin-top: 50px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            text-align: left;
        }

        .feature {
            width: 30%;
            margin-bottom: 30px;
        }

        .feature i {
            font-size: 48px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .feature h3 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 16px;
            color: #888888;
            line-height: 1.6;
        }

        @media screen and (max-width: 800px) {
            .container {
                padding: 10px;
            }
            .feature {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <img src="./images/kcb.png" alt="KCB Logo" class="logo">
    <h1>Welcome to KCB Bank</h1>
    <p>
        KCB Bank is committed to providing innovative financial solutions to our customers. With a strong presence in
        Rwanda, we offer a wide range of banking services tailored to meet your needs.
    </p>
    <p>
        Whether you're looking to manage your finances, save for the future, or invest in opportunities, KCB Bank is
        here to help you achieve your goals.
    </p>
    <a href="login.jsp" class="button">Login</a>
    <a href="signUp.jsp" class="button">Register</a>
    <p>Already have an account? <a href="login.jsp">Login</a></p>

    <!-- Features Section -->
    <div class="features">
        <div class="feature">
            <i class="fas fa-wallet"></i>
            <h3>Manage Your Finances</h3>
            <p>Access a range of banking services to manage your accounts, transfer funds, pay bills, and more.</p>
        </div>
        <div class="feature">
            <i class="fas fa-piggyBank"></i>
            <h3>Savings and Investments</h3>
            <p>Start saving for the future or explore investment opportunities with our trusted financial advisors.</p>
        </div>
        <div class="feature">
            <i class="fas fa-shield-alt"></i>
            <h3>Secure Transactions</h3>
            <p>Enjoy peace of mind with our advanced security measures to protect your online transactions.</p>
        </div>
    </div>

    <!-- Social Media Icons -->
    <div class="social-icons">
        <a href="#" title="Facebook"><i class="fab fa-facebook"></i></a>
        <a href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
        <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    &copy; 2022 KCB Bank. All rights reserved.
</div>
</body>
</html>