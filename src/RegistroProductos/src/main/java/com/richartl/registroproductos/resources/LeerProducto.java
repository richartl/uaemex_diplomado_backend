package com.richartl.registroproductos.resources;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import com.richartl.registroproductos.*;
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
public class LeerProducto {

    public Path currentRelativePath = Paths.get("");
    public File productsFile = new File(currentRelativePath.toAbsolutePath().toString() + "/webapps/products.csv");

    public List<List<String>> getProducts() throws FileNotFoundException, IOException {
        List<List<String>> products = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(productsFile))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",");
                products.add(Arrays.asList(values));
            }
        }
        return products;
    }
}
