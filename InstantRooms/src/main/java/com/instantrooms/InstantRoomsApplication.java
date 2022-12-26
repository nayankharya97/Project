package com.instantrooms;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.instantrooms.controller.RoomController;

@SpringBootApplication
public class InstantRoomsApplication {

	public static void main(String[] args) {
		// Below line will create "uploads" folder at startup if not created.
		new File(RoomController.uploadDirectory).mkdir();
		SpringApplication.run(InstantRoomsApplication.class, args);
	}

}
