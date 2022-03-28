package com.greatlearning.studentFest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.greatlearning.studentFest.entity.Student;

public interface StudentRepository extends JpaRepository <Student,Integer>{
	 
}
