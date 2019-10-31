/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.LinkedList;

/**
 *
 * @author Nathan
 */
public class ListaUsuarios {

    LinkedList<Usuario> Registros = new LinkedList<Usuario>();

    public void add(Usuario user) {
        Registros.add(user);
    }

    public Usuario get(int n) {
        Usuario user = Registros.get(n);
        return user;
    }
    
    public Usuario getLast() {
        Usuario user = Registros.getLast();
        return user;
    }
    
    public int size() {
        int size = Registros.size();
        return size;
    }
    
    public void remove(int n) {
        Registros.remove(n);
    }

    public boolean comprobarDatos(String user, String passw) {
        boolean correcto = false;
        for (int i = 0; i < Registros.size(); i++) {
            Registros.get(i);
            if (Registros.get(i).getEmail().equals(user) && Registros.get(i).getPassword().equals(passw)) {
                correcto = true;
            }
        }
        return correcto;
    }

}
