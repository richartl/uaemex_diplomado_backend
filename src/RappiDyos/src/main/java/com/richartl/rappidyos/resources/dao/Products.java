/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;
import static com.richartl.rappidyos.resources.dao.UserDaoImplementation.con;
import com.richartl.rappidyos.resources.model.GenericObject;
import com.richartl.rappidyos.resources.model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author richartl
 */
public class Products implements ObjectDao {
    @Override
    public int add(GenericObject obj) throws SQLException {
        Product newObj = (Product) obj;
        String query = "insert into products(vin, name) VALUES (?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, newObj.getVin());
        ps.setString(2, newObj.getName());
        int n = ps.executeUpdate();
        return n;
    }

    @Override
    public void delete(int id) throws SQLException {
        String query = "delete from products where id=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }

    @Override
    public GenericObject getById(int id) throws SQLException {
        String query = "select * from products where id= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        Product newObj = new Product();
        ResultSet rs = ps.executeQuery();
        boolean check = false;
  
        while (rs.next()) {
            check = true;
            newObj.setId(rs.getInt("id"));
            newObj.setVin(rs.getString("vin"));
            newObj.setName(rs.getString("name"));
        }
  
        if (check == true) {
            return newObj;
        }
        else
            return null;
    }

    @Override
    public List<GenericObject> getAll() throws SQLException {
        String query = "select * from products";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<GenericObject> ls = new ArrayList();
        
        while (rs.next()) {
            Product newObj = new Product();
            newObj.setId(rs.getInt("id"));
            newObj.setVin(rs.getString("vin"));
            newObj.setName(rs.getString("name"));
            ls.add(newObj);
        }
        return ls;
    }

    @Override
    public void update(GenericObject obj) throws SQLException {
        Product newObj = (Product) obj;
        String query = "update products set vin=?, name=? where id = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, newObj.getVin());
        ps.setString(2, newObj.getName());
        ps.executeUpdate();
    }
}
