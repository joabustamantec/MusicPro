import { HttpClient } from '@angular/common/http';

import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class WsService {

  constructor(private http: HttpClient) { }
  /// variable para consumir en general la api
  url: string ='http://localhost:8080/WSSS/webresources/api';

  //crud consumir el ws
  //leer todos los productos (listado)
  getProductos(){
    return this.http.get(this.url)
  }
//// leer 1 producto:
  getProducto(id:number){
  return this.http.get(this.url + '/' + id)
}


/// insertar 1 cliente
  insertarCliente(cliente2:any){
    return this.http.post(this.url,cliente2)
  }
}
