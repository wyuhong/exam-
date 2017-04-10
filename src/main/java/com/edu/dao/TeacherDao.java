package com.edu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edu.entity.Classes;
import com.edu.entity.Teacher;
import com.edu.entity.Type;

@Repository
public interface TeacherDao {

	List<Teacher> listTeachers(@Param("startRow")int startRow, @Param("pageSize")int pageSize);
	List<Teacher> searching(@Param("teacher")Teacher teacher,@Param("startRow")int startRow, @Param("pageSize")int pageSize);
	void addTeacher(Teacher teacher);
	void updateTeacher(Teacher teacher);
	Teacher findTeacherByTid(int tid);
	void updateStatus1ByTid(int tid);
	void updateStatus2ByTid(int tid);
	int countTeacher();
	int countFuzzyTeacher(Teacher teacher);
	List<Type> listTypes();
	List<Classes> listClasses();
}
