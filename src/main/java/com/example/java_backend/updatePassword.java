package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "updatePassword", value = "/updatePassword")
public class updatePassword extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        String password = req.getParameter("password");
        String conPassword = req.getParameter("conPassword");

        if (isCorrectEmail(password, conPassword)){

            Connection connection = null;
            PreparedStatement statement = null;

            try {
                connection = dbConnection.getConnection();
                String sql = "UPDATE user SET password = ? WHERE email = ?";

                statement = connection.prepareStatement(sql);
                statement.setString(1, password);
                statement.setString(2, userEmail);
                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                    resp.sendRedirect("/login/success.jsp");
                } else {
                    resp.sendRedirect("../login/error.jsp");
                    System.out.println("Password didn't updated, can be a DB connection error");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (statement != null) statement.close();
                    if (connection != null) dbConnection.closeConnection(connection);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("login/pswUnMatched.jsp");
            dispatcher.forward(req, resp);
        }
    }

    private boolean isCorrectEmail(String password, String conPassword) {
        if (password.equals(conPassword)) {
            return true;
        } else {
            return false;
        }
    }
}