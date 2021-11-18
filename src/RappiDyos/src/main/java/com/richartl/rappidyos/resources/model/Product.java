/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.model;

/**
 *
 * @author richartl
 */
public class Product extends GenericObject {
    private int id;
    private String name;
    private String vin;

    public Product() {}
    
    public Product(String name, String vin) {
        this.name = name;
        this.vin = vin;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getVin() {
        return vin;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
