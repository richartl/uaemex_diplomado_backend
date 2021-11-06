package com.richartl.ecuacioncuadratica.resources;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author richartl
 */
public class CustomModel {

    public BufferedWriter out;
    public Path currentRelativePath = Paths.get("");
    public File resultsFile = new File(currentRelativePath.toAbsolutePath().toString() + "/webapps/results.txt");

    public CustomModel() {
        try {
            resultsFile.delete();
            resultsFile.createNewFile();
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resultsFile, true)));
        } catch (IOException ex) {
            Logger.getLogger(CustomModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void closeBuffer() throws IOException {
        this.out.close();
    }

    public void openBuffer() throws IOException {
        out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resultsFile, true)));
    }

    public void storeResult(String result) {
        try {
            out.write(result);
            out.newLine();
        } catch (IOException e) {
            System.out.println(e);
        }
    }
}
