/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.model;

/**
 *
 * @author richartl
 */
public class Transport extends GenericObject{
    private int id;
    private String vin;
    private String transportType;

    public Transport() {}
    
    public Transport(int id, String vin) {
        this.id = id;
        this.vin = vin;
    }

    public int getId() {
        return id;
    }

    public String getVin() {
        return vin;
    }

    public String getTransportType() {
        return transportType;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public void setTransportType(String transportType) {
        this.transportType = transportType;
    }

}
