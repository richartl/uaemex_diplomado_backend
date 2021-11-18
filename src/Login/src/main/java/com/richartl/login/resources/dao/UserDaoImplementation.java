/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.login.resources.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.richartl.login.resources.util.DatabaseConfig;
import com.richartl.login.resources.model.User;

/**
 *
 * @author richartl
 */
public class UserDaoImplementation implements UserDao {

    static Connection con = DatabaseConfig.getConnection();
    
    @Override
    public int add(User user) throws SQLException {
        String query = "insert into users(nickname, name, email, password) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, user.getNickname());
        ps.setString(2, user.getName());
        ps.setString(3, user.getEmail());
        ps.setString(4, user.getPassword());
        int n = ps.executeUpdate();
        return n;
    }

    @Override
    public void delete(int id) throws SQLException {
        String query = "delete from users where id=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ps.executeUpdate();
    }

    @Override
    public User getUser(int id) throws SQLException {
        String query = "select * from users where id= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        User user = new User();
        ResultSet rs = ps.executeQuery();
        boolean check = false;
  
        while (rs.next()) {
            check = true;
            user.setId(rs.getInt("id"));
            user.setNickname(rs.getString("nickname"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
        }
  
        if (check == true) {
            return user;
        }
        else
            return null;
    }
    
    @Override
    public User loginUser(String email, String password) throws SQLException {
        String query = "select * from users where email= ? AND password= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, password);
        User user = new User();
        ResultSet rs = ps.executeQuery();
        boolean check = false;
        while (rs.next()) {
            check = true;
            user.setId(rs.getInt("id"));
            user.setNickname(rs.getString("nickname"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
        }
  
        if (check == true) {
            return user;
        }
        else
            return null;
    }

    @Override
    public User getByNickname(String nickname) throws SQLException {
        String query = "select * from users where nickname= ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, nickname);
        User user = new User();
        ResultSet rs = ps.executeQuery();
        boolean check = false;
        while (rs.next()) {
            check = true;
            user.setId(rs.getInt("id"));
            user.setNickname(rs.getString("nickname"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
        }
  
        if (check == true) {
            return user;
        }
        else
            return null;
    }
    
    
    @Override
    public List<User> getUsers() throws SQLException {
        String query = "select * from users";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        List<User> ls = new ArrayList();
  
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setNickname(rs.getString("nickname"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            ls.add(user);
        }
        return ls;
    }

    @Override
    public void update(User user) throws SQLException {
        String query = "update employee set nickname=?, name=?, email=? where id = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, user.getNickname());
        ps.setString(2, user.getName());
        ps.setString(3, user.getEmail());
        ps.setInt(4, user.getId());
        ps.executeUpdate();
    }
    
}
