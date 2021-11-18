/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.model;

/**
 *
 * @author richartl
 */
public class Delivery extends GenericObject {
    private int id;
    private String delivery_date;
    private DeliveryMan deliveryMan;
    private Product product;

    public Delivery() {}

    public Delivery(int id, String delivery_date, DeliveryMan deliveryMan, Product product) {
        this.id = id;
        this.delivery_date = delivery_date;
        this.deliveryMan = deliveryMan;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public String getDelivery_date() {
        return delivery_date;
    }

    public DeliveryMan getDeliveryMan() {
        return deliveryMan;
    }

    public Product getProduct() {
        return product;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDelivery_date(String delivery_date) {
        this.delivery_date = delivery_date;
    }

    public void setDeliveryMan(DeliveryMan deliveryMan) {
        this.deliveryMan = deliveryMan;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

}
