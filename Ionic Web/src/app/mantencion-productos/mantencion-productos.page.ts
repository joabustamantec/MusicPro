import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { WsService } from '../services/ws.service';


@Component({
  selector: 'app-mantencion-productos',
  templateUrl: './mantencion-productos.page.html',
  styleUrls: ['./mantencion-productos.page.scss'],
})
export class MantencionProductosPage implements OnInit {

  constructor(private ws: WsService, private router: Router) {}

  // Producto
  //VARIABLE PARA TODOS LOS PRODUCTOS:
  productos: any

  // lista producto
  
  ngOnInit(): void {
      this.cargarproductos();
  }
  cargarproductos(){
    this.ws.getProductos().subscribe(
      resp =>{
        this.productos=resp
      }
    )
  }
  mostrar_detalle(id_producto: number){
    this.router.navigate(['/detalle-producto',id_producto])


  }

  /*ngOnInit(): void {
    var producto_temporal: any;
      this.ws.getProductos().subscribe(
        (resp: any )=>{
          this.lista_producto=resp;
          }

      )
  }
  */
}


