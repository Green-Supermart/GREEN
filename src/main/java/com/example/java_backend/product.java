package com.example.java_backend;

public class product {
    private int id;
    private String name;
    private String category;
    private int orgPrice;
    private int discPrice;
    private String stockStatus;
    private int quantity;
    private int sku;
    private String image;

    public product() {
    }

    public product(int id, String name, String category, int orgPrice, int discPrice, String stockStatus, int quantity, int sku, String image) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.orgPrice = orgPrice;
        this.discPrice = discPrice;
        this.stockStatus = stockStatus;
        this.quantity = quantity;
        this.sku = sku;
        this.image = image;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    public int getOrgPrice() {
        return orgPrice;
    }
    public void setOrgPrice(int orgPrice) {
        this.orgPrice = orgPrice;
    }


    public int getDiscPrice() {
        return discPrice;
    }
    public void setDiscPrice(int discPrice) {
        this.discPrice = discPrice;
    }

    public String getStockStatus() {
        return stockStatus;
    }

    public void setStockStatus(String stockStatus) {
        this.stockStatus = stockStatus;
    }


    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public int getSku() {
        return sku;
    }
    public void setSku(int sku) {
        this.sku = sku;
    }

    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
}
