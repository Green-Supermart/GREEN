package com.example.java_backend;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "getProductDetails", value = "/getProductDetails")
public class getProductDetails extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<product> products = new ArrayList<>();
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            String query = "SELECT id, productName, category, originalPrice, discountPrice, stockStatus, quantity, sku, imgLink FROM products";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("productName");
                String category = resultSet.getString("category");
                int orgPrice = resultSet.getInt("originalPrice");
                int discPrice = resultSet.getInt("discountPrice");
                String stockStatus = resultSet.getString("stockStatus");
                int quantity = resultSet.getInt("quantity");
                int sku = resultSet.getInt("sku");
                String image = resultSet.getString("imgLink");

                product obj = new product(id, name, category, orgPrice, discPrice, stockStatus, quantity, sku, image);
                products.add(obj);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            String jsonProducts = objectMapper.writeValueAsString(products);
            resp.setContentType("application/json");

            resp.getWriter().write(jsonProducts);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}