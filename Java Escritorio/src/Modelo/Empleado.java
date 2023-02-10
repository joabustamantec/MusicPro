/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author MATIAS
 */
public class Empleado {
    private String rut_empleado,nombre,ap_paterno,ap_materno;
    private Integer telefono;
    private String correo,direccion;
    private String usuario, contrasena;
    private Integer id_perfil;

    public Empleado() {
    }

    public Empleado(String rut_empleado, String nombre, String ap_paterno, String ap_materno, Integer telefono, String correo, String direccion, String usuario, String contrasena,Integer id_perfil) {
        setRut_empleado(rut_empleado);
        setNombre(nombre);
        setAp_paterno(ap_paterno);
        setAp_materno(ap_materno);
        setTelefono(telefono);
        setCorreo(correo);
        setDireccion(direccion);
        setUsuario(usuario);
        setContrasena(contrasena);
        setId_perfil(id_perfil);
    }

    public Empleado(String nombre, String ap_paterno, String ap_materno, Integer telefono, String correo, String direccion, String usuario, String contrasena,Integer id_perfil) {
        setNombre(nombre);
        setAp_paterno(ap_paterno);
        setAp_materno(ap_materno);
        setTelefono(telefono);
        setCorreo(correo);
        setDireccion(direccion);
        setUsuario(usuario);
        setContrasena(contrasena);
        setId_perfil(id_perfil);
    }

    public String getRut_empleado() {
        return rut_empleado;
    }

    public void setRut_empleado(String rut_empleado) {
        this.rut_empleado = rut_empleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAp_paterno() {
        return ap_paterno;
    }

    public void setAp_paterno(String ap_paterno) {
        this.ap_paterno = ap_paterno;
    }

    public String getAp_materno() {
        return ap_materno;
    }

    public void setAp_materno(String ap_materno) {
        this.ap_materno = ap_materno;
    }

    public Integer getTelefono() {
        return telefono;
    }

    public void setTelefono(Integer telefono) {
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

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
        
    }
    
    public Integer getId_perfil() {
        return id_perfil;
    }

    public void setId_perfil(Integer id_perfil) {
        this.id_perfil = id_perfil;
    }

    
}
