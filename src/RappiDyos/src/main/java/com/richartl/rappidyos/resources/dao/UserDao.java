/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;

import java.sql.SQLException;
import java.util.List;
import com.richartl.rappidyos.resources.model.User;

/**
 *
 * @author richartl
 */
public interface UserDao {
    public int add(User user)
        throws SQLException;
    public void delete(int id)
        throws SQLException;
    public User getUser(int id)
        throws SQLException;
    public User loginUser(String email, String password)
        throws SQLException;
    public User getByEmail(String email)
        throws SQLException;
    public List<User> getUsers()
        throws SQLException;
    public void update(User user)
        throws SQLException;
}
