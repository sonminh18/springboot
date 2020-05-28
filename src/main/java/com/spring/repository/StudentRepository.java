package com.spring.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.spring.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long>{

}