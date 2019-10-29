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
    private int rol;
    private String email;
    private String password;
    private boolean activo;
    
    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//

    public Usuario(int cod_user, String nombre, String apellidos, int rol, String email, String password) {
        this.cod_user = cod_user;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.rol = rol;
        this.email = email;
        this.password = password;
    }

    public Usuario(int cod_user, String nombre, String apellidos, int rol, String email, String password, boolean activo) {
        this.cod_user = cod_user;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.rol = rol;
        this.email = email;
        this.password = password;
        this.activo = activo;
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

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
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

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//
    
}
