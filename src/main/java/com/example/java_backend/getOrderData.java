package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "getOrderData", value = "/getOrderData")
public class getOrderData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BufferedReader reader = req.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        order orderDetailsDTO = objectMapper.readValue(sb.toString(), order.class);


        List<order.OrderItem> items = orderDetailsDTO.getOrderDetails();
        List<Integer> productIds = new ArrayList<>();
        List<Integer> quantities = new ArrayList<>();
        List<Integer> orderIdArray = new ArrayList<>();
        List<String> userEmailArray = new ArrayList<>();

        for (order.OrderItem item : items) {
            productIds.add(item.getProductId());
            quantities.add(item.getQuantity());
        }

        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        int orderID = generateRandomOrderID();

        int length = productIds.size();

        for (int i = 0; i < length; i++) {
            userEmailArray.add(userEmail);
        }

        for (int i = 0; i < length; i++) {
            orderIdArray.add(orderID);
        }

        String query = "INSERT INTO orders (orderID, pid, userEmail, quantity) VALUES ( ?, ?, ?, ?)";

        try (Connection connection = dbConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            for (int i = 0; i < length; i++) {
                preparedStatement.setInt(1, orderIdArray.get(i));
                preparedStatement.setInt(2, productIds.get(i));
                preparedStatement.setString(3, userEmailArray.get(i));
                preparedStatement.setInt(4, quantities.get(i));

                preparedStatement.executeUpdate();
            }

            System.out.println("Rows inserted successfully.");

        } catch (SQLException e) {
            e.printStackTrace();
        }


        try {
            sendEmail.emailConfiguration(userEmail, "Your Order Has Been Placed", "Your order has been successfully placed on our platform. We are work on it.");
        } catch (Exception e) {
            e.printStackTrace();
        }

        resp.setContentType("application/json");
        resp.getWriter().write("Order received successfully");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/payment.jsp");
        dispatcher.forward(req, resp);
    }

    private int generateRandomOrderID() {
        Random random = new Random();
        int generatedOID = 100000 + random.nextInt(900000);

        return generatedOID;
    }
}