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
    private String deliveryDate;
    private DeliveryMan deliveryMan;
    private Product product;

    public Delivery() {}

    public Delivery(DeliveryMan deliveryMan, Product product) {
        this.deliveryMan = deliveryMan;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public String getDeliveryDate() {
        return deliveryDate;
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

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public void setDeliveryMan(DeliveryMan deliveryMan) {
        this.deliveryMan = deliveryMan;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

}
