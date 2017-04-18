package edu.iu.club.connect.config;

import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.web.*;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by Karun on 12/7/16.
 */
@Configuration
@AutoConfigureAfter(DispatcherServletAutoConfiguration.class)
public class Config extends WebMvcConfigurerAdapter{


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        String myExternalFilePath = "file:///app/";
        registry.addResourceHandler("/**").addResourceLocations(myExternalFilePath);

        super.addResourceHandlers(registry);
    }

}