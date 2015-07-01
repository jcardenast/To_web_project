/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

/**
 *
 * @author JESUS-PC
 */
public class DbConexion {

    
    private String go = "http://localhost:54838/Service1.svc";
    public String getDatos(String sUrl) {
        URL url;
        InputStream is = null;
        BufferedReader br;
        String line;

        try {
            url = new URL(go+sUrl);
            is = url.openStream();  // throws an IOException
            br = new BufferedReader(new InputStreamReader(is));
            String result ="";
            while ((line = br.readLine()) != null) {
                result +=line;
            }
            result = result.substring(1);
            result = result.substring(0, result.length()-1);
            return result;
        } catch (IOException ioe) {
            return ioe.getMessage();
        } finally {
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException ioe) {
                // nothing to see here
            }
        }
    }
}
