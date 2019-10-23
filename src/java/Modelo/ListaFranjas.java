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
public class ListaFranjas {

    LinkedList<Franja> Franjas = new LinkedList<Franja>();

    public void add(Franja fran) {
        Franjas.add(fran);
    }

    public Franja get(int n) {
        Franja fran = Franjas.get(n);
        return fran;
    }

    public int size() {
        int size = Franjas.size();
        return size;
    }

    public void remove(int n) {
        Franjas.remove(n);
    }

}
