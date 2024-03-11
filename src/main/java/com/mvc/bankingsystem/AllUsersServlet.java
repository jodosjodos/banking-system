package com.mvc.bankingsystem;

import com.mvc.bankingsystem.dto.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "/users", value = "/users")
public class AllUsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session =req.getSession();
        String email =(String) session.getAttribute("email");
        if (!email.equals("admin123@gmail.com")){
            req.setAttribute("error", " this page is accessed by only admin users");
            req.getRequestDispatcher("error.jsp").forward(req, res);
        }

        List<User> users = allUsers();
        req.setAttribute("users", users);
        req.getRequestDispatcher("/usersList.jsp").forward(req, res);
    }

    private List<User> allUsers() {
        String url = "jdbc:postgresql://localhost:5432/work";
        String usernameDb = "jodos";
        String passwordDb = "jodos2006";
        String query = "SELECT * FROM users";
        List<User> userList = new ArrayList<>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, usernameDb, passwordDb);
            PreparedStatement select = con.prepareStatement(query);
            ResultSet resultSet = select.executeQuery();
            while (resultSet.next()) {
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String bankType = resultSet.getString("banktype");
                int age = resultSet.getInt("age");
                double amount = resultSet.getDouble("amount");

                // Create User object with retrieved data
                User user = new User(username, email, password, bankType, age, amount);
                userList.add(user);
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return userList;
    }
}
