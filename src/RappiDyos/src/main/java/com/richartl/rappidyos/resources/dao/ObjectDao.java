/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.richartl.rappidyos.resources.dao;

import com.richartl.rappidyos.resources.model.GenericObject;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author richartl
 */
public interface ObjectDao {
    public int add(GenericObject obj)
        throws SQLException;
    public void delete(int id)
        throws SQLException;
    public GenericObject getById(int id)
        throws SQLException;
    public List<GenericObject> getAll()
        throws SQLException;
    public void update(GenericObject obj)
        throws SQLException;
}
