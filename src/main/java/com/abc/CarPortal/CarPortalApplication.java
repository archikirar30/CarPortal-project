package com.abc.CarPortal;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.abc.CarPortal.Controller.CarController;

@SpringBootApplication
public class CarPortalApplication {

	public static void main(String[] args) {
		
		new File(CarController.uploadDirectory).mkdir();
		SpringApplication.run(CarPortalApplication.class, args);
	}

}
