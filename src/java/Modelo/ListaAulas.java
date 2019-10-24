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
public class ListaAulas {
    
    LinkedList<Aula> Aulas = new LinkedList<Aula>();
    
    public void add(Aula aul) {
        Aulas.add(aul);
    }
    
    public Aula get(int n) {
        Aula a = Aulas.get(n);
        return a;
    }
    
    public int size() {
        int size = Aulas.size();
        return size;
    }
    
    public void remove(int n) {
        Aulas.remove(n);
    }
    
}
