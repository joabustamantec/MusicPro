import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MantencionProductosPage } from './mantencion-productos.page';

const routes: Routes = [
  {
    path: '',
    component: MantencionProductosPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class MantencionProductosPageRoutingModule {}
