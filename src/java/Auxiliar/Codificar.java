/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package Auxiliar;

import org.apache.commons.codec.digest.DigestUtils;
        

/**
 *
 * @author fernando
 */
public class Codificar {
    
    public static String codifica(String cadenaPlana){
        String cadCodificada = DigestUtils.md5Hex(cadenaPlana);
        return cadCodificada;
    }
}
