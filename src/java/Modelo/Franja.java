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
public class Franja {

    //************************************************************************//
    //*******************************Atributos********************************//
    //************************************************************************//
    private int cod_franja;
    private String hora;

    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//
    public Franja(int cod_franja, String hora) {
        this.cod_franja = cod_franja;
        this.hora = hora;
    }

    public Franja() {

    }

    //************************************************************************//
    //****************************Getters/Setters*****************************//
    //************************************************************************//
    public int getCod_franja() {
        return cod_franja;
    }

    public void setCod_franja(int cod_franja) {
        this.cod_franja = cod_franja;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//
    @Override
    public String toString() {
        return "Franja{" + "cod_franja=" + cod_franja + ", hora=" + hora + '}';
    }

}
