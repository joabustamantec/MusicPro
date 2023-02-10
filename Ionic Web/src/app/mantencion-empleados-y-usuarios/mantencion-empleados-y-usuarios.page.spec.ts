import { ComponentFixture, TestBed, waitForAsync } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { MantencionEmpleadosYUsuariosPage } from './mantencion-empleados-y-usuarios.page';

describe('MantencionEmpleadosYUsuariosPage', () => {
  let component: MantencionEmpleadosYUsuariosPage;
  let fixture: ComponentFixture<MantencionEmpleadosYUsuariosPage>;

  beforeEach(waitForAsync(() => {
    TestBed.configureTestingModule({
      declarations: [ MantencionEmpleadosYUsuariosPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(MantencionEmpleadosYUsuariosPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
