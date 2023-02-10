/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;
/**
 *
 * @author MATIAS
 */
public class Producto {
    private int id_producto;
    private String nro_serie,codigo;
    private int precio,stock;
    private String nombre,descripcion;
    private int oferta;
    private Date fecha_ingreso;
    private int id_tipo_prod, id_modelo,id_sucursal;
    private String rut_empleado;
    private int id_categoria,id_marca;

    public Producto() {
    }

    public Producto(int id_producto, String nro_serie, String codigo, int precio, int stock, String nombre, String descripcion, int oferta, Date fecha_ingreso, int id_tipo_prod, int id_modelo, int id_sucursal, String rut_empleado, int id_categoria, int id_marca) {
        setId_producto(id_producto);
        setNro_serie(nro_serie);
        setCodigo(codigo);
        setPrecio(precio);
        setStock(stock);
        setNombre(nombre);
        setDescripcion(descripcion);
        setOferta(oferta);
        setFecha_ingreso(fecha_ingreso);
        setId_tipo_prod(id_tipo_prod);
        setId_modelo(id_modelo);
        setId_sucursal(id_sucursal);
        setRut_empleado(rut_empleado);
        setId_categoria(id_categoria);
        setId_marca(id_marca);
        
}

    public Producto(String nro_serie, String codigo, int precio, int stock, String nombre, String descripcion, int oferta, Date fecha_ingreso, int id_tipo_prod, int id_modelo, int id_sucursal, String rut_empleado, int id_categoria, int id_marca) {
        setNro_serie(nro_serie);
        setCodigo(codigo);
        setPrecio(precio);
        setStock(stock);
        setNombre(nombre);
        setDescripcion(descripcion);
        setOferta(oferta);
        setFecha_ingreso(fecha_ingreso);
        setId_tipo_prod(id_tipo_prod);
        setId_modelo(id_modelo);
        setId_sucursal(id_sucursal);
        setRut_empleado(rut_empleado);
        setId_categoria(id_categoria);
        setId_marca(id_marca);
        
    }

    public Producto(int stock, String descripcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNro_serie() {
        return nro_serie;
    }

    public void setNro_serie(String nro_serie) {
        this.nro_serie = nro_serie;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getOferta() {
        return oferta;
    }

    public void setOferta(int oferta) {
        this.oferta = oferta;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public int getId_tipo_prod() {
        return id_tipo_prod;
    }

    public void setId_tipo_prod(int id_tipo_prod) {
        this.id_tipo_prod = id_tipo_prod;
    }

    public int getId_modelo() {
        return id_modelo;
    }

    public void setId_modelo(int id_modelo) {
        this.id_modelo = id_modelo;
    }

    public int getId_sucursal() {
        return id_sucursal;
    }

    public void setId_sucursal(int id_sucursal) {
        this.id_sucursal = id_sucursal;
    }


    public String getRut_empleado() {
        return rut_empleado;
    }

    public void setRut_empleado(String rut_empleado) {
        this.rut_empleado = rut_empleado;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }
}
   