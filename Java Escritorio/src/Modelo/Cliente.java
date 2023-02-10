/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Motions
 */
public class Cliente {
            private String rut_cliente, nombre, apellidos;
            private int telefono;
            private String correo, direccion, contrasena;

    public Cliente() {
    }

    public Cliente(String rut_cliente, String nombre, String apellidos, int telefono, String correo, String direccion, String contrasena) {
        setRut_cliente(rut_cliente);
        setNombre(nombre);
        setApellidos(apellidos);
        setTelefono(telefono);
        setCorreo(correo);
        setDireccion(direccion);
        setContrasena(contrasena);
    }

    public Cliente(String nombre, String apellidos, int telefono, String correo, String direccion, String contrasena) {
        setNombre(nombre);
        setApellidos(apellidos);
        setTelefono(telefono);
        setCorreo(correo);
        setDireccion(direccion);
        setContrasena(contrasena);
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    
 
            
}
