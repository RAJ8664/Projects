// src/app/components/chat/chat.component.ts
import { Component, OnInit, OnDestroy, ViewChild, ElementRef, AfterViewChecked } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { WebSocketService, ChatMessage, MessageType } from '../../services/websocket.service';
import { Subscription } from 'rxjs';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css'],
  imports: [CommonModule, FormsModule, RouterModule]
})
export class ChatComponent implements OnInit, OnDestroy, AfterViewChecked {
  @ViewChild('messageContainer') private messageContainer!: ElementRef;
  
  messages: ChatMessage[] = [];
  newMessage: string = '';
  username: string = '';
  onlineUsers: number = 0;
  isTyping: boolean = false;
  private subscription: Subscription = new Subscription();
  
  constructor(
    private webSocketService: WebSocketService,
    private router: Router
  ) {}
  
  public navigateToHome(): void {
    this.router.navigate(['/']);
  }
  
  ngOnInit(): void {
    this.username = this.webSocketService.getUsername();
    
    if (!this.username) {
      this.navigateToHome();
      return;
    }
    
    this.subscription = this.webSocketService.messages$.subscribe(messages => {
      this.messages = messages;
    });
  }
  
  ngAfterViewChecked(): void {
    this.scrollToBottom();
  }
  
  ngOnDestroy(): void {
    if (this.subscription) {
      this.subscription.unsubscribe();
    }
    this.webSocketService.disconnect();
  }
  
  sendMessage(): void {
    if (this.newMessage.trim()) {
      this.webSocketService.sendMessage(this.newMessage);
      this.newMessage = '';
    }
  }
  
  getMessageClass(message: ChatMessage): string {
    if (message.type === MessageType.JOIN || message.type === MessageType.LEAVE) {
      return 'event-message';
    }
    
    return message.sender === this.username ? 'my-message' : 'other-message';
  }
  
  getEventText(message: ChatMessage): string {
    if (message.type === MessageType.JOIN) {
      return `${message.sender} joined the chat`;
    } else if (message.type === MessageType.LEAVE) {
      return `${message.sender} left the chat`;
    }
    return '';
  }
  
  getInitials(name: string): string {
    return name.charAt(0).toUpperCase();
  }
  
  getAvatarColor(name: string): string {
    const colors = [
      'bg-red-500', 'bg-blue-500', 'bg-green-500', 'bg-yellow-500',
      'bg-purple-500', 'bg-pink-500', 'bg-indigo-500', 'bg-teal-500'
    ];
    
    let hash = 0;
    for (let i = 0; i < name.length; i++) {
      hash = name.charCodeAt(i) + ((hash << 5) - hash);
    }
    
    return colors[Math.abs(hash) % colors.length];
  }
  
  private scrollToBottom(): void {
    try {
      this.messageContainer.nativeElement.scrollTop = this.messageContainer.nativeElement.scrollHeight;
    } catch (err) {}
  }
}