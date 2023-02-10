import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { WsService } from '../services/ws.service';
import { CarritoService } from '../services/carrito.service';
@Component({
  selector: 'app-detalle-producto',
  templateUrl: './detalle-producto.page.html',
  styleUrls: ['./detalle-producto.page.scss'],
})
export class DetalleProductoPage implements OnInit {

  producto: any
  id_producto: number
  nombre:string
  precio:number
  descripcion:string
  total: number = 0
  stock: number
  cantidad: number=1
  constructor(private activateRouter: ActivatedRoute,
              private ws: WsService,
              private carritoService: CarritoService) { }
  async ngOnInit() {
    this.id_producto = +this.activateRouter.snapshot.paramMap.get('id_producto')
    await this.getProducto()
  }
  async getProducto(){
    this.ws.getProducto(this.id_producto).subscribe(
      resp=>{
        this.producto = resp
        this.nombre = this.producto[0].nombre
        this.precio = this.producto[0].precio
        this.descripcion = this.producto[0].descripcion
        this.stock = this.producto[0].stock
        this.calcular_total()
      }
    )
  }
  calcular_total(){
    this.total = this.precio * this.cantidad


  }
  
  aumentar(){if(this.stock > this.cantidad){
    this.cantidad +=1
  this.calcular_total()}
  }
  disminuir(){
    if(this.cantidad > 1){
      this.cantidad -=1
      this.calcular_total()
    }
  }
  agregar(){
    var producto_carro: any ={
      producto:{
        id_producto:this.id_producto,
        nombre:this.precio,
        precio:this.precio,
        descripcion: this.descripcion,
        stock:this.stock
      },
      cantidad:this.cantidad
    }
    this.carritoService.agregar(producto_carro)
  }
}