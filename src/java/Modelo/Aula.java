/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Nathan
 */
public class Aula {
    
    //************************************************************************//
    //*******************************Atributos********************************//
    //************************************************************************//
    
    private int cod_aula;
    private String descripcion;
    
    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//
    
    public Aula(int cod_aula, String descripcion) {
        this.cod_aula = cod_aula;
        this.descripcion = descripcion;
    }
    
    public Aula() {
        
    }
    
    //************************************************************************//
    //****************************Getters/Setters*****************************//
    //************************************************************************//
    
    public int getCod_aula() {
        return cod_aula;
    }

    public void setCod_aula(int cod_aula) {
        this.cod_aula = cod_aula;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//

    @Override
    public String toString() {
        return "Aula{" + "cod_aula=" + cod_aula + ", descripcion=" + descripcion + '}';
    }
    
}
