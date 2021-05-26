/*
** This file contains the persistence class.
** Each class attribute is known as persistence attribute
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="receitas")
public class Receitas { //persistence class
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  long id;           //persistence attribute
    
    @Column(name="nome")
    private  String nome;       //persistence attribute
    @Column(name="tempo")
    private  String tempo;
    @Column(name="porcao")
    private  String porcao;
    @Column(name="categoria")
    private  String categoria;
    @Column(name="ingredientes")
    private  String ingredientes;
    @Column(name="preparo")
    private  String preparo;

    
    public Receitas(){}          //zero parameter constructor
    public String getNome() {   
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    } 
    public String getTempo() {   
        return tempo;
    }
    public void setTempo(String tempo) {
        this.tempo = tempo;
    } 
    public String getPorcao() {   
        return porcao;
    }
    public void setPorcao(String porcao) {
        this.porcao = porcao;
    }
    public String getCategoria() {   
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public String getIngredientes() {   
        return ingredientes;
    }
    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }
    public String getPreparo() {   
        return preparo;
    }
    public void setPreparo(String preparo) {
        this.preparo = preparo;
    }
}