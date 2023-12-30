package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "getUserData", value = "/getUserData")
public class getUserData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        if (userEmail == null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
            dispatcher.forward(req, resp);
        } else {
            String fullName = "";
            String address = "";
            String password = "";

            Connection connection = null;

            try {
                connection = dbConnection.getConnection();

                String query = "SELECT name, address, password FROM user WHERE email = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, userEmail);

                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    fullName = resultSet.getString("name");
                    address = resultSet.getString("address");
                    password = resultSet.getString("password");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println(e);
            } finally {
                try {
                    if (connection != null) {
                        dbConnection.closeConnection(connection);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            req.setAttribute("fullName", fullName);
            req.setAttribute("address", address);
            req.setAttribute("email", userEmail);

            session.setAttribute("address", address);

            RequestDispatcher dispatcher = req.getRequestDispatcher("account.jsp");
            dispatcher.forward(req, resp);
        }


    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}