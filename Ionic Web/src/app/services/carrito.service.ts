import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage';

@Injectable({
  providedIn: 'root'
})
export class CarritoService {


  carrito: any[] = []
  constructor(private storage: Storage) {
    this.storage.create();
  }

  async agregar(producto_carro: any) {
    this.carrito = []
    this.carrito = await this.storage.get('carrito') || []

    var producto_buscar = this.carrito.find(producto_temp => producto_temp.producto.id_producto == producto_carro.producto.id_producto)
    if (producto_buscar == undefined) {
      this.carrito.push(producto_carro)
    } else {
      producto_buscar.cantidad += producto_carro.cantidad
    }
    this.storage.set('carrito', this.carrito)
  }
  async obtener_carrito(){
    return this.carrito = await this.storage.get('carrito') || []
  }
  async eliminar(id_producto: number){
    this.carrito = []
    this.carrito = await this.storage.get('carrito') || []
    this.carrito = this.carrito.filter(pro_temp => pro_temp.producto.id_producto !=  id_producto)
    this.storage.set('carrito', this.carrito)
  }

}
