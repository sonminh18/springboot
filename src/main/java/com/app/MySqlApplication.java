package com.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RestController
public class MySqlApplication {
Logger logger = LoggerFactory.getLogger(MySqlApplication.class);
	@GetMapping("/")

	public static void main(String[] args) {
		SpringApplication.run(MySqlApplication.class, args);
	}

}
