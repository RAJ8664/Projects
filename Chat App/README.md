# Real-Time Chat Application

A modern real-time chat application built with Spring Boot WebSocket backend and Angular as frontend.

## Features

- **Real-time messaging using WebSocket protocol**
- **User presence notifications (join/leave events)**
- **Modern UI built with Angular and Tailwind CSS**
- **Beautiful animations for a polished user experience**

## Project Structure

The project consists of two main components:

### Backend (SpringBoot)

- Built with Spring Boot and WebSocket
-  uses STOMP protocol for messaging
-  handles user connections
-  message routing
-  and broadcasting.

### Frontend (Angular Frontend)

- Modern UI built with Angular 17
-  styled with Tailwind CSS
-  uses SockJS and STOMP.js for WebSocket communication
-  responsive design with beautiful animations.

## Prerequisites

To run this application, you need:

- Java 17 or higher
- Node.js 18 or higher
- npm 9 or higher
- Angular CLI 17 or higher

## How to Run the Application

### Running the Backend (Spring Boot)

1. Navigate to the backend directory:
   ```bash
   cd "Chat App/Chat-App"
   ```
2. Build the application using Maven:
   ```bash
   ./mvnw clean install
   ```
   (or `mvnw.cmd clean install` on Windows)
3. Run the Spring Boot application:
   ```bash
   ./mvnw spring-boot:run
   ```
   (or `mvnw.cmd spring-boot:run` on Windows)
4. The backend server will start on port 8080.

### Running the Frontend (Angular)

1. Navigate to the frontend directory:
   ```bash
   cd "Chat App/FrontEnd/ChatApp"
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the Angular development server:
   ```bash
   ng serve
   ```
4. Open your browser and navigate to: `http://localhost:4200`

## How to Use the Application

1. **Login Screen**:  Enter your username to join the chat
2. **Chat Interface**:  Once logged in, you can see the chat interface
3. **Sending Messages**:  Type your message in the input field at the bottom and click "Send" or press Enter
4. **User Events**:  You'll see notifications when users join or leave the chat
5. **Leaving Chat**:  Click the "Leave Chat" button to exit the chat room

## Application Output

When you run the application, you'll see:

1. **Login Screen**: A clean, modern login page where you enter your username. Features a gradient background with a card-style login form. Animated button and form elements.

2. **Chat Interface**: After logging in, you'll see the main chat interface. Messages are displayed in a scrollable area. Your messages appear on the right side. Other users' messages appear on the left with their initials in an avatar. System messages (join/leave) appear in the center. Beautiful animations when messages appear. Modern design with gradient backgrounds and glass-morphism effects.

3. **Real-time Updates**: As users join, leave, or send messages, the chat updates instantly.

## Technologies Used

- **Backend**:
  - Spring Boot
  - Spring WebSocket
  - STOMP Protocol
  - Java

- **Frontend**:
  - Angular 17
  - TypeScript
  - Tailwind CSS
  - SockJS
  - STOMP.js

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
