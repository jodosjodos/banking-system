package com.mvc.bankingsystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String usernmae = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String bankType = req.getParameter("bankType");
        System.out.println(usernmae);
        System.out.println(email);
        System.out.println(password);
        System.out.println(bankType);
    }
}
