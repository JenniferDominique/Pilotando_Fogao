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

@Entity(name="alimentos")
public class Alimentos { //persistence class
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  long id;           //persistence attribute
    //IDENTITY ==> https://stackoverflow.com/questions/49813666/table-dbname-hibernate-sequence-doesnt-exist
    //Antes estava AUTO mas estava dando erro, mas achei a solução no link acima
    
    @Column(name="nome")
    private  String nome;       //persistence attribute
    @Column(name="categoria")
    private  String categoria;

    
    public Alimentos(){}          //zero parameter constructor
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
    public String getCategoria() {   
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
}