package com.spring.service;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.model.Student;
import com.spring.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	StudentRepository StudentRepository;
	
	public void saveStudent(Student Student) {
		StudentRepository.save(Student);
	}
	
	public Iterable<Student> getStudentHistory() {
		return StudentRepository.findAll();
	}
	
	public Optional<Student> getStudent(Long id) {
		return StudentRepository.findById(id);
	}
}