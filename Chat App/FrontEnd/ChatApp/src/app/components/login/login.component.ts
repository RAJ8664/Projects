// src/app/components/login/login.component.ts
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { WebSocketService } from '../../services/websocket.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  imports: [CommonModule, FormsModule]
})
export class LoginComponent {
  username: string = '';
  connecting: boolean = false;
  error: string = '';

  constructor(
    private webSocketService: WebSocketService,
    private router: Router
  ) {}

  connect(): void {
    if (!this.username.trim()) {
      this.error = 'Username cannot be empty';
      return;
    }

    this.connecting = true;
    this.error = '';

    this.webSocketService.connect(this.username)
      .then(() => {
        this.router.navigate(['/chat']);
      })
      .catch(err => {
        this.error = 'Failed to connect to chat server. Please try again.';
        this.connecting = false;
      });
  }
}