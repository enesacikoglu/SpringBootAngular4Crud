package com.cengenes.configuration.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class DynamicConfigurationServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(DynamicConfigurationServiceApplication.class, args);
	}
}
