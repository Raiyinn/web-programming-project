/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Tarik
 */
public class Product {
    private int id;
    private String name;
    private float price;
    private String description;
    
    public void setId(int id){
        this.id = id;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setPrice(float price){
        this.price = price;
    }
    
    public void setDescription(String description){
        this.description = description;
    }
    
    public int getId(){
        return id;
    }
    
    public String getName(){
        return name;
    }
    
    public float getPrice(){
        return price;
    }
    
    public String getDescription(){
        return description;
    }
}


