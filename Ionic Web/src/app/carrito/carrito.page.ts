import { Component, OnInit } from '@angular/core';
import { CarritoService } from '../services/carrito.service';
import { WsService } from '../services/ws.service';
@Component({
  selector: 'app-carrito',
  templateUrl: './carrito.page.html',
  styleUrls: ['./carrito.page.scss'],
})
export class CarritoPage implements OnInit {
  lista_prod_carro: any[] = []
  total: number

  constructor(private carritoService: CarritoService) { }
  

  ngOnInit() {
    this.cargarCarrito()
    this.calcaular_total()

  }
  async cargarCarrito(){
    this.lista_prod_carro = await this.carritoService.obtener_carrito()
  }
  calcaular_total(){
    this.total = 0
    for(let pc of this.lista_prod_carro){
      this.total = this.total + (pc.cantidad * pc.producto.precio)
    }
  }
  async eliminar(id_producto: number){
    await this.carritoService.eliminar(id_producto)
    await this.cargarCarrito()
    this.calcaular_total()
  }
}
