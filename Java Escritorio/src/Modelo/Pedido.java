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
public class Pedido {
            private int id_orden_ped;
            private String estado_orden;
            private String rut_cliente;

    public Pedido() {
    }
    
    public Pedido(int id_orden_ped, String estado_orden, String rut_cliente) {
        setId_orden_ped(id_orden_ped);
        setEstado_orden(estado_orden);
        setRut_cliente(rut_cliente);
    }

    public Pedido(String estado_orden, String rut_cliente) {
        setEstado_orden(estado_orden);
        setRut_cliente(rut_cliente);
    }

    public int getId_orden_ped() {
        return id_orden_ped;
    }

    public void setId_orden_ped(int id_orden_ped) {
        this.id_orden_ped = id_orden_ped;
    }

    public String getEstado_orden() {
        return estado_orden;
    }

    public void setEstado_orden(String estado_orden) {
        this.estado_orden = estado_orden;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }


            
            
            
}

