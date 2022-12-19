/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import model.Node;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author stag
 */
public class FileUtils {

    public static void saveToFile(Serializable object, String url) {
        FileOutputStream fos;
        try {
            fos = new FileOutputStream(url);
            try ( ObjectOutputStream oos = new ObjectOutputStream(fos)) {
                oos.writeObject(object);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Node loadNodeFromFile(String url) {
        Node node = null;
        File f = new File(url);
        if(!f.isFile())
            return null;
        FileInputStream fis;
        try {
            fis = new FileInputStream(url);
            try (ObjectInputStream ois = new ObjectInputStream(fis)) {
                node = (Node) ois.readObject();
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException | ClassNotFoundException ex) {
            Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
        }
        return node;
    }
}
