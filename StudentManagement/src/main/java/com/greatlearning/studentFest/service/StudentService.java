package com.greatlearning.studentFest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.studentFest.entity.Student;
@Service

public interface StudentService {
	
	public List<Student> findAll();
	public Student findById(int theId);
	public void save (Student stud);
	public void deleteById(int theId);
 
}
