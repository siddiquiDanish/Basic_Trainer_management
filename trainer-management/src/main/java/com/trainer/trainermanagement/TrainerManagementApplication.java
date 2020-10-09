package com.trainer.trainermanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class TrainerManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrainerManagementApplication.class, args);
	}

}
