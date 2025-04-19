import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MainUIComponent } from './main-ui.component';

describe('MainUIComponent', () => {
  let component: MainUIComponent;
  let fixture: ComponentFixture<MainUIComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [MainUIComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(MainUIComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
