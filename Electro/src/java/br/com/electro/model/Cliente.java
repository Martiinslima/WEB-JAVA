/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.electro.model;

/**
 *
 * @author jsoft-ti
 */
public class Cliente {
    private int id;
    private String nome;
    private String email;
    private String senha;

    public Cliente(int id, String nome, String email, String senha) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }
    
  
    
}
