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
public class Reserva {

    //************************************************************************//
    //*******************************Atributos********************************//
    //************************************************************************//
    private int cod_reserva;
    private int cod_aula;
    private int cod_franja;
    private int cod_user;
    private String dia;

    //************************************************************************//
    //*****************************Constructores******************************//
    //************************************************************************//
    public Reserva(int cod_reserva, int cod_aula, int cod_franja, int cod_user, String dia) {
        this.cod_reserva = cod_reserva;
        this.cod_aula = cod_aula;
        this.cod_franja = cod_franja;
        this.cod_user = cod_user;
        this.dia = dia;
    }

    public Reserva() {

    }

    //************************************************************************//
    //****************************Getters/Setters*****************************//
    //************************************************************************//
    public int getCod_reserva() {
        return cod_reserva;
    }

    public void setCod_reserva(int cod_reserva) {
        this.cod_reserva = cod_reserva;
    }

    public int getCod_aula() {
        return cod_aula;
    }

    public void setCod_aula(int cod_aula) {
        this.cod_aula = cod_aula;
    }

    public int getCod_franja() {
        return cod_franja;
    }

    public void setCod_franja(int cod_franja) {
        this.cod_franja = cod_franja;
    }

    public int getCod_user() {
        return cod_user;
    }

    public void setCod_user(int cod_user) {
        this.cod_user = cod_user;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    //************************************************************************//
    //********************************Métodos*********************************//
    //************************************************************************//
}
