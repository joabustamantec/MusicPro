/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author MATIAS
 */
public class Stock {
    private int id_producto,stock;
    private String descripcion;

    public Stock() {
    }

    public Stock(int id_producto, int stock, String descripcion) {
        setId_producto(id_producto);
        setStock(stock);
        setDescripcion(descripcion);
    }

    public Stock(int stock, String descripcion) {
        setStock(stock);
        setDescripcion(descripcion);
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}