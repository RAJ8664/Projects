// src/app/services/websocket.service.ts
import { Injectable } from '@angular/core';
import { Client, IMessage } from '@stomp/stompjs';
import { BehaviorSubject} from 'rxjs';

export enum MessageType {
  CHAT = 'CHAT',
  JOIN = 'JOIN',
  LEAVE = 'LEAVE'
}

export interface ChatMessage {
  type: MessageType;
  content?: string;
  sender: string;
  timestamp?: Date;
}

@Injectable({
  providedIn: 'root'
})
export class WebSocketService {
  private client: Client;
  private messageSubject = new BehaviorSubject<ChatMessage[]>([]);
  public messages$ = this.messageSubject.asObservable();
  private username: string = '';
  private connected: boolean = false;

  constructor() {
    this.client = new Client();
  }

  connect(username: string): Promise<void> {
    this.username = username;
    return new Promise((resolve, reject) => {
      try {
        if (this.client && this.client.connected) {
          this.client.deactivate();
        }
        this.client = new Client();
        this.client.configure({
          // Use direct WebSocket URL
          brokerURL: 'ws://localhost:8080/ws',
          debug: function(str) {
            console.log('STOMP: ' + str);
          },
          reconnectDelay: 5000, // Try to reconnect after 5 seconds
          heartbeatIncoming: 4000,
          heartbeatOutgoing: 4000,
          onConnect: () => {
            console.log('WebSocket connection established');
            this.connected = true;
            this.subscribeToPublicTopic();
            this.addUser();
            resolve();
          },
          onStompError: (frame) => {
            console.error('Broker reported error: ' + frame.headers['message']);
            console.error('Additional details: ' + frame.body);
            this.connected = false;
            reject(new Error('WebSocket connection error'));
          },
          onWebSocketError: (event) => {
            console.error('WebSocket error:', event);
            this.connected = false;
            reject(new Error('WebSocket connection error'));
          },
          onWebSocketClose: (event) => {
            console.log('WebSocket connection closed:', event);
            this.connected = false;
          }
        });
        
        console.log('Activating STOMP client connection');
        this.client.activate();
      } catch (error) {
        console.error('Error during connection setup:', error);
        reject(error);
      }
    });
  }

  disconnect(): void {
    if (this.client && this.client.connected) {
      console.log('Disconnecting WebSocket');
      this.client.deactivate();
      this.connected = false;
    }
  }

  sendMessage(content: string): void {
    if (!this.client.connected) {
      console.error('Cannot send message: WebSocket is still not connected');
      return;
    }
    
    const chatMessage: ChatMessage = {
      type: MessageType.CHAT,
      content,
      sender: this.username,
      timestamp: new Date()
    };
    
    console.log('Sending message to server:', chatMessage);
    this.client.publish({
      destination: '/app/chat.sendMessage',
      body: JSON.stringify(chatMessage)
    });
  }

  private addUser(): void {
    const chatMessage: ChatMessage = {
      type: MessageType.JOIN,
      sender: this.username
    };
    console.log('Sending JOIN message to server:', chatMessage);
    this.client.publish({
      destination: '/app/chat.addUser',
      body: JSON.stringify(chatMessage)
    });
  }

  private subscribeToPublicTopic(): void {
    console.log('Subscribing to /topic/public');
    this.client.subscribe('/topic/public', (message: IMessage) => {
      console.log('Received message from server:', message.body);
      const newMessage: ChatMessage = JSON.parse(message.body);
      const currentMessages = this.messageSubject.getValue();
      this.messageSubject.next([...currentMessages, newMessage]);
    });
  }

  getUsername(): string {
    return this.username;
  }

  isConnected(): boolean {
    return this.connected;
  }
}