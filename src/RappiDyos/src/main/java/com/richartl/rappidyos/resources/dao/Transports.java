/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;

import static com.richartl.rappidyos.resources.dao.UserDaoImplementation.con;
import com.richartl.rappidyos.resources.model.GenericObject;
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
public class Transports implements ObjectDao {

    @Override
    public int add(GenericObject obj) throws SQLException {
        Transport transport = (Transport) obj;
        String query = "insert into transports(vin, transport_type) VALUES (?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, transport.getVin());
        ps.setString(2, transport.getTransportType());
        int n = ps.executeUpdate();
        return n;
    }

    @Override
    public void delete(int id) throws SQLException {
        String query = "delete from transports where id=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }

    @Override
    public GenericObject getById(int id) throws SQLException {
        String query = "select * from transports where id= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        Transport transport = new Transport();
        ResultSet rs = ps.executeQuery();
        boolean check = false;
  
        while (rs.next()) {
            check = true;
            transport.setId(rs.getInt("id"));
            transport.setVin(rs.getString("vin"));
            transport.setTransportType(rs.getString("transport_type"));
        }
  
        if (check == true) {
            return transport;
        }
        else
            return null;
    }

    @Override
    public List<GenericObject> getAll() throws SQLException {
        String query = "select * from transports";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<GenericObject> ls = new ArrayList();
        
        while (rs.next()) {
            Transport transport = new Transport();
            transport.setId(rs.getInt("id"));
            transport.setVin(rs.getString("vin"));
            transport.setTransportType(rs.getString("transport_type"));
            ls.add(transport);
        }
        return ls;
    }

    @Override
    public void update(GenericObject obj) throws SQLException {
        Transport transport = (Transport) obj;
        String query = "update transports set vin=?, transport_type=? where id = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, transport.getVin());
        ps.setString(2, transport.getTransportType());
        ps.executeUpdate();
    }
}
