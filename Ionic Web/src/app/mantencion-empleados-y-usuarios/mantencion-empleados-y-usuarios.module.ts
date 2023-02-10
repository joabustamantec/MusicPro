import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { MantencionEmpleadosYUsuariosPageRoutingModule } from './mantencion-empleados-y-usuarios-routing.module';

import { MantencionEmpleadosYUsuariosPage } from './mantencion-empleados-y-usuarios.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    MantencionEmpleadosYUsuariosPageRoutingModule
  ],
  declarations: [MantencionEmpleadosYUsuariosPage]
})
export class MantencionEmpleadosYUsuariosPageModule {}
