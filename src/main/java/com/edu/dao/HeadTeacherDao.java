package com.edu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.edu.entity.HeadTeacher;
@Repository
public interface HeadTeacherDao {


	void addHeadTeacher(HeadTeacher headTeacher);

	HeadTeacher findHeadTeacherByHid(int hid);

	void updateHeadTeacherByHid(HeadTeacher headTeacher);

	void updateHeadTeacherStatusByHid(int hid);

	List<HeadTeacher> listHeadTeachers(@Param("startRow")int startRow, @Param("pageSize")int pageSize);

	int countHeadTeacher();

	List<HeadTeacher> searchHeadteacher(@Param("headteacher")HeadTeacher headTeacher, @Param("startRow")int startRow, @Param("pageSize")int pageSize);

	int countFuzzyHeadTeacher(HeadTeacher headTeacher);

}
