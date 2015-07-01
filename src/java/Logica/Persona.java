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
public class Persona {
    private DbConexion db = new DbConexion();
    private String url1 = "/set_Persona/";

    public String guardarPersona(String nombre, String apePaterno, String apeMAterno, String email) {
        String newurl = url1 + nombre + "/" + apePaterno + "/" + apeMAterno + "?mail=" + email;
        String resultado = db.getDatos(newurl);
        return resultado;
    }
}
