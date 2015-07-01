/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

/**
 *
 * @author JESUS-PC
 */
public class Usuario {
    private DbConexion db = new DbConexion();
    private String url1 = "/get_Usuario/";
    private String url2 = "/set_Usuario/";
    
    public String getUsuario(String nombre, String pass)
    {
        String newurl = url1 + nombre + "/" + pass;
        String resultado = db.getDatos(newurl);
        return resultado;
    }
    
    public String guardarUsuario(String nombre, String pass, String Per_id)
    {
        String newurl = url2 + nombre + "/" + pass + "/" + Per_id;
        String resultado = db.getDatos(newurl);
        return resultado;
    }
}
