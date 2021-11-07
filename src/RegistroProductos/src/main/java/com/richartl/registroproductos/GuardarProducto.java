package com.richartl.registroproductos;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author richartl
 */
public class GuardarProducto {

    public BufferedWriter out;
    public Path currentRelativePath = Paths.get("");
    public File productsFile = new File(currentRelativePath.toAbsolutePath().toString() + "/webapps/products.csv");

    public GuardarProducto() {
        try {
            productsFile.createNewFile();
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(productsFile, true)));
        } catch (IOException ex) {
            Logger.getLogger(GuardarProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void closeBuffer() throws IOException {
        this.out.close();
    }

    public void storeProduct(String key, String name, float price, int quantity) {
        try {
            out.write(key + "," + name + "," + price + "," + quantity);
            out.newLine();
        } catch (IOException e) {
            System.out.println(e);
        }
    }
}
