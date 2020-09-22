package net.kzn.onlineshopping.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import net.kzn.onlineshopping.model.UserModelList;
import net.kzn.onlineshopping.security.ActiveUserStore;

@Configuration
public class AppConfig {
    // beans

    @Bean
    public ActiveUserStore activeUserStore() {
        return new ActiveUserStore();
    }
    
    @Bean
    public UserModelList userModelList() {
        return new UserModelList();
    }
}
