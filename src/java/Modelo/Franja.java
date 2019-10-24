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
    private String hora_empieza;
    private String hora_termina;

    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//
    public Franja(int cod_franja, String hora_empieza, String hora_termina) {
        this.cod_franja = cod_franja;
        this.hora_empieza = hora_empieza;
        this.hora_termina = hora_termina;
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

    public String getHora_empieza() {
        return hora_empieza;
    }

    public void setHora_empieza(String hora_empieza) {
        this.hora_empieza = hora_empieza;
    }

    public String getHora_termina() {
        return hora_termina;
    }

    public void setHora_termina(String hora_termina) {
        this.hora_termina = hora_termina;
    }

    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//
    @Override
    public String toString() {
        return "Franja{" + "cod_franja=" + cod_franja + ", hora_empieza=" + hora_empieza + ", hora_termina=" + hora_termina + '}';
    }

}
