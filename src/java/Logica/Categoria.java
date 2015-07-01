/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Datos.CategoriaDato;
import java.util.ArrayList;

/**
 *
 * @author JESUS-PC
 */
public class Categoria {
    private DbConexion db = new DbConexion();
    private String url1 = "/set_Categoria/";
    private String url2 = "/modificarCategoria/";
    private String url3 = "/get_Categoria_User/";
    
    public String set_Categoria(String nombre, String user)
    {
        String urlTmp = url1 + nombre + "/" + user;
        String resultado = db.getDatos(urlTmp);
        return resultado;
    }
    
    public ArrayList<CategoriaDato> get_Categorias(String user)
    {
        String urlTmp = url3+user;
        String resultado = db.getDatos(urlTmp);
        ArrayList<CategoriaDato> lista = new ArrayList<CategoriaDato>();
        
        if(resultado.compareTo("") == 0){
            return lista;
        }
        String[] regs = resultado.split(",");
        
        for(int i=0; i<regs.length; ++i)
        {
            String tmp = regs[i].substring(1);
            tmp = tmp.substring(0, tmp.length()-1);
            String[] rg = tmp.split(";");
            CategoriaDato c = new CategoriaDato();
            c.setId(rg[0]); c.setNombre(rg[1]);
            lista.add(c);
        }
        
        return lista;
    }
    
    public String modificarCat(String id, String nombre)
    {
        String urlTmp = url2 + id + "/" + nombre;
        String resultado = db.getDatos(urlTmp);
        return resultado;
    }
}
