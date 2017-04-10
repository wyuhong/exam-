package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.Student;
import com.edu.entity.User;

@Repository
public interface StudentDao {


	List<Student> listStudents();

	List<Student> searchFuzzyStudents(Student student);

	void AddStudents(Student student);

}
