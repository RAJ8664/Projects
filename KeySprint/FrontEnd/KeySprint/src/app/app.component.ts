import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { MainUIComponent } from './main-ui/main-ui.component';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CommonModule, MainUIComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'KeySprint';
}
