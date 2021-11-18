/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;

import static com.richartl.rappidyos.resources.dao.UserDaoImplementation.con;
import com.richartl.rappidyos.resources.model.GenericObject;
import com.richartl.rappidyos.resources.model.DeliveryMan;
import com.richartl.rappidyos.resources.model.Transport;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author richartl
 */
public class DeliveryMen implements ObjectDao {
    @Override
    public int add(GenericObject obj) throws SQLException {
        DeliveryMan newObj = (DeliveryMan) obj;
        String query = "insert into delivery_men(name, own_id, transport_id) VALUES (?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, newObj.getName());
        ps.setString(2, newObj.getOwnId());
        ps.setInt(3, newObj.getTransport().getId());
        int n = ps.executeUpdate();
        return n;
    }

    @Override
    public void delete(int id) throws SQLException {
        String query = "delete from delivery_men where id=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }

    @Override
    public GenericObject getById(int id) throws SQLException {
        String query = "select * from delivery_men where id= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        DeliveryMan newObj = new DeliveryMan();
        ResultSet rs = ps.executeQuery();
        boolean check = false;

        while (rs.next()) {
            check = true;
            newObj.setId(rs.getInt("id"));
            newObj.setName(rs.getString("name"));
            newObj.setOwnId(rs.getString("own_id"));
            Transport transport = (Transport) new Transports().getById(rs.getInt("transport_id"));
            newObj.setTransport(transport);
        }

        if (check == true) {
            return newObj;
        }
        else
            return null;
    }

    @Override
    public List<GenericObject> getAll() throws SQLException {
        String query = "select * from delivery_men";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<GenericObject> ls = new ArrayList();

        while (rs.next()) {
            DeliveryMan newObj = new DeliveryMan();
            newObj.setId(rs.getInt("id"));
            newObj.setName(rs.getString("name"));
            newObj.setOwnId(rs.getString("own_id"));
            Transport transport = (Transport) new Transports().getById(rs.getInt("transport_id"));
            newObj.setTransport(transport);
            ls.add(newObj);
        }
        return ls;
    }

    @Override
    public void update(GenericObject obj) throws SQLException {
        DeliveryMan newObj = (DeliveryMan) obj;
        String query = "update delivery_men set name=?, own_id=?, transport_id=? where id = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, newObj.getName());
        ps.setString(2, newObj.getOwnId());
        ps.setInt(3, newObj.getTransport().getId());
        ps.setInt(4, newObj.getId());
        ps.executeUpdate();
    }
}
