/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;

import static com.richartl.rappidyos.resources.dao.UserDaoImplementation.con;
import com.richartl.rappidyos.resources.model.Delivery;
import com.richartl.rappidyos.resources.model.DeliveryMan;
import com.richartl.rappidyos.resources.model.Product;
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
public class Deliveries implements ObjectDao{
    @Override
    public int add(GenericObject obj) throws SQLException {
        Delivery newObj = (Delivery) obj;
        String query = "insert into deliveries(delivery_man_id, product_id) VALUES (?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, newObj.getDeliveryMan().getId());
        ps.setInt(2, newObj.getProduct().getId());
        int n = ps.executeUpdate();
        return n;
    }

    @Override
    public void delete(int id) throws SQLException {
        String query = "delete from deliveries where id=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }

    @Override
    public GenericObject getById(int id) throws SQLException {
        String query = "select * from deliveries where id= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        Delivery newObj = new Delivery();
        ResultSet rs = ps.executeQuery();
        boolean check = false;

        while (rs.next()) {
            check = true;
            newObj.setId(rs.getInt("id"));
            DeliveryMen dm = new DeliveryMen();
            Products pr = new Products();
            newObj.setDeliveryMan((DeliveryMan) dm.getById(rs.getInt("delivery_man_id")));
            newObj.setProduct((Product) pr.getById(rs.getInt("product_id")));
        }

        if (check == true) {
            return newObj;
        }
        else
            return null;
    }

    @Override
    public List<GenericObject> getAll() throws SQLException {
        String query = "select * from deliveries";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<GenericObject> ls = new ArrayList();

        while (rs.next()) {
            Delivery newObj = new Delivery();
            newObj.setId(rs.getInt("id"));
            DeliveryMen dm = new DeliveryMen();
            Products pr = new Products();
            newObj.setDeliveryMan((DeliveryMan) dm.getById(rs.getInt("delivery_man_id")));
            newObj.setProduct((Product) pr.getById(rs.getInt("product_id")));
            ls.add(newObj);
        }
        return ls;
    }

    @Override
    public void update(GenericObject obj) throws SQLException {
        Delivery newObj = (Delivery) obj;
        String query = "update deliveries set delivery_man_id=?, product_id=? where id = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, newObj.getDeliveryMan().getId());
        ps.setInt(2, newObj.getProduct().getId());
        ps.executeUpdate();
    }
}
