import { Component, OnInit } from '@angular/core';

import { WsService } from '../services/ws.service';


@Component({
  selector: 'app-registro-cliente',
  templateUrl: './registro-cliente.page.html',
  styleUrls: ['./registro-cliente.page.scss'],
})
export class RegistroClientePage implements OnInit {

  constructor(private ws: WsService) { }

  ngOnInit() {
  }
 cliente2:any
  /// variables para llamar a todas las variables
  rut_cliente: string
  nombre: string
  apellido: string
  telefono: number
  correo: string
  direccion: string
  contrasena: string
  usuario: string
  /////////////77
  insertarCliente() {
    var cliente2: any ={
      "rut_cliente": this.rut_cliente,
      "nombre": this.nombre,
      "apellido": this.apellido,
      "telefono": this.telefono,
      "correo": this.correo,
      "direccion":this.direccion,
      "contrasena": this.contrasena,
      "usuario": this.usuario
    }
     this.ws.insertarCliente(cliente2).subscribe(
      resp=>{
        if(resp){
          alert('REGISTRADO CON EXITO')
        }else{
          alert('Ups.... vuelva a internarlo')
        }
      }

    )

  }
}
