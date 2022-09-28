package com.josemeurer.devcourses;

import com.josemeurer.devcourses.Repositories.NotificationRepository;
import com.josemeurer.devcourses.entities.Notification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;

@SpringBootApplication
public class DevcoursesApplication implements CommandLineRunner {

	@Autowired
	private NotificationRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(DevcoursesApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

		List<Notification> list = repository.unreadNotifications("alex@gmail.com");
		list.forEach(System.out::println);

	}
}
