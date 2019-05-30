/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.electro.model;

/**
 *
 * @author internet
 */
public class Compra {
    
    private int idCompra;
    private String nome;
    private String quantidade;
    private String preco;
    
    
    public int getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    public String getPreco() {
        return preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }
    

    public Compra(int idCompra, String nome, String quantidade, String preco) {
        this.idCompra = idCompra;
        this.nome = nome;
        this.quantidade = quantidade;
        this.preco = preco;
    }

    
}
