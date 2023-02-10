import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MantencionEmpleadosYUsuariosPage } from './mantencion-empleados-y-usuarios.page';

const routes: Routes = [
  {
    path: '',
    component: MantencionEmpleadosYUsuariosPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class MantencionEmpleadosYUsuariosPageRoutingModule {}
