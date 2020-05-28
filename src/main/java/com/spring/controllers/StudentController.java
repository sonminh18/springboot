package com.spring.controllers;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.spring.model.Student;
import com.spring.service.StudentService;

@RestController

public class StudentController {

	@Autowired
	StudentService StudentService;
	
	@PostMapping("/create")
	public Long createStudent(@RequestBody Student Student) {
		StudentService.saveStudent(Student);
		return Student.getStudentId();
	}
	
	@GetMapping("/viewAll")
	public Iterable<Student> viewAllStudents() {
		return StudentService.getStudentHistory();
	}
	
	@GetMapping("/view/{id}")
	public Student viewStudentById(@PathVariable ("id") Long id) {
		Optional<Student> Student = StudentService.getStudent(id);
		if(Student.isPresent()) {
			return Student.get();
		}
		return null;
	}
}