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
public class ListaReservas {
    
    LinkedList<Reserva> Reservas = new LinkedList<Reserva>();
    
    public void add(Reserva res) {
        Reservas.add(res);
    }
    
    public Reserva get(int n) {
        Reserva r = Reservas.get(n);
        return r;
    }
    
    public int size() {
        int size = Reservas.size();
        return size;
    }
    
    public void remove(int n) {
        Reservas.remove(n);
    }
    
}
