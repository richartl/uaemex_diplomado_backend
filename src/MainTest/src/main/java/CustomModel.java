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

    public CustomModel() {
        Path currentRelativePath = Paths.get("");
        File resultsFile = new File(currentRelativePath.toAbsolutePath().toString() + "/results.txt");
        try {
            resultsFile.createNewFile();
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resultsFile, true)));
        } catch (IOException ex) {
            Logger.getLogger(CustomModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    public void storeResult(String result) {
        try {
            out.write(result + "\n");
        } catch (IOException e) {
            System.out.println(e);
        } finally {
            try {
                out.close();
            } catch (IOException e) {
                System.out.println(e);
            }
        }
    }
}
