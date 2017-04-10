package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.StudentDao;
import com.edu.entity.Student;
import com.edu.entity.User;

@Service
public class StudentService {
	@Autowired
	private StudentDao studentDao;

	public List<Student> listStudents() {
		List<Student> slist = studentDao.listStudents();
		return slist;
	}

	public List<Student> searchFuzzyStudents(Student student) {
		List<Student> slist = studentDao.searchFuzzyStudents(student);
		return slist;
	}

	public void AddStudents(Student student) {
		studentDao.AddStudents(student);
	}
}
