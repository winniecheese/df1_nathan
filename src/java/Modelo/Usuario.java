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
public class Usuario {
    
    //************************************************************************//
    //*******************************Atributos********************************//
    //************************************************************************//
    
    private int cod_user;
    private String nombre;
    private String apellidos;
    private LinkedList<Integer> rol;
    private String email;
    private String password;
    
    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//

    public Usuario(int cod_user, String nombre, String apellidos, LinkedList<Integer> rol, String email, String password) {
        this.cod_user = cod_user;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.rol = rol;
        this.email = email;
        this.password = password;
    }
    
    public Usuario() {
        
    }

    Usuario(int cod_user, String nombre, String apellidos, String email, String password) {
        this.cod_user = cod_user;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.password = password;
    }
    
    //************************************************************************//
    //****************************Getters/Setters*****************************//
    //************************************************************************//
    
    public int getCod_user() {
        return cod_user;
    }

    public void setCod_user(int cod_user) {
        this.cod_user = cod_user;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public LinkedList<Integer> getRol() {
        return rol;
    }

    public void setRol(LinkedList<Integer> rol) {
        this.rol = rol;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//

    public void addRol(int r) {
        this.rol.add(r);
    }
    
    public int ctosRoles() {
        return rol.size();
    }
    
}
