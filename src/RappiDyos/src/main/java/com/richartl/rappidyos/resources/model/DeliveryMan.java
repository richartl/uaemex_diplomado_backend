/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.model;

/**
 *
 * @author richartl
 */
public class DeliveryMan extends GenericObject {
    private int id;
    private String name;
    private String ownId;
    private Transport transport;
    
    public DeliveryMan() {}

    public DeliveryMan(String name, String ownId, Transport transport) {
        this.name = name;
        this.ownId = ownId;
        this.transport = transport;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getOwnId() {
        return ownId;
    }

    public Transport getTransport() {
        return transport;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setOwnId(String own_id) {
        this.ownId = ownId;
    }

    public void setTransport(Transport transport) {
        this.transport = transport;
    }
    
    
}
