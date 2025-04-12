package com.roy.raj.Chat.App.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        // Add endpoint with SockJS support
        registry.addEndpoint("/ws")
                .setAllowedOrigins("http://localhost:4200", "http://localhost:4000", "http://localhost") 
                .withSockJS();
                
        // Add the same endpoint without SockJS for direct WebSocket connections
        registry.addEndpoint("/ws")
                .setAllowedOrigins("http://localhost:4200", "http://localhost:4000", "http://localhost");
    }

    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        registry.setApplicationDestinationPrefixes("/app");
        registry.enableSimpleBroker("/topic");
    }
}
