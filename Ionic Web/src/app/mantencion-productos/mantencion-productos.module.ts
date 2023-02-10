import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { MantencionProductosPageRoutingModule } from './mantencion-productos-routing.module';

import { MantencionProductosPage } from './mantencion-productos.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    MantencionProductosPageRoutingModule
  ],
  declarations: [MantencionProductosPage]
})
export class MantencionProductosPageModule {}
