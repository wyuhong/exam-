package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.TeacherDao;
import com.edu.entity.Classes;
import com.edu.entity.HeadTeacher;
import com.edu.entity.Teacher;
import com.edu.entity.Type;

@Service
public class TeacherService {

	@Autowired
	private TeacherDao teacherDao;

	public List<Teacher> searching(Teacher teacher, int startRow, int pageSize) {
		List<Teacher> tlist = teacherDao.searching(teacher,startRow,pageSize);
		return tlist;
	}
	public void addTeacher(Teacher teacher) {
		teacherDao.addTeacher(teacher);
		
	}
	public void updateTeacher(Teacher teacher) {
		teacherDao.updateTeacher(teacher);
		
	}
	public Teacher findTeacherByTid(int tid) {
		Teacher teacher = teacherDao.findTeacherByTid(tid);
		return teacher;
		
	}
	public void updateStatus1ByTid(int tid) {
		teacherDao.updateStatus1ByTid(tid);
		
	}
	public void updateStatus2ByTid(int tid) {
		teacherDao.updateStatus2ByTid(tid);
		
	}
	public List<Teacher> listTeachers(int startRow, int pageSize) {
		List<Teacher> tlist = teacherDao.listTeachers(startRow,pageSize);
		return tlist;
	}
	public int countTeacher() {
		int totalRecords=teacherDao.countTeacher();
		return totalRecords;
	}
	public int countFuzzyTeacher(Teacher teacher) {
		int totalRecords=teacherDao.countFuzzyTeacher(teacher);
		return totalRecords;
	}
	public List<Type> listTypes() {
		List<Type> tList =teacherDao.listTypes();
		return tList;
	}
	public List<Classes> listClasses() {
		List<Classes> cList =teacherDao.listClasses();
		return cList;
	}
	
}
