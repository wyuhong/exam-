package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.HeadTeacherDao;
import com.edu.entity.HeadTeacher;
import com.edu.entity.Teacher;
import com.edu.util.PageBean;
@Service
public class HeadTeacherService {

	@Autowired
	private HeadTeacherDao headTeacherDao;
	public void addHeadTeacher(HeadTeacher headTeacher) {
		headTeacherDao.addHeadTeacher(headTeacher);
	}
	public HeadTeacher findHeadTeacherByHid(int hid) {
		HeadTeacher headTeacher = headTeacherDao.findHeadTeacherByHid(hid);
		return headTeacher;
	}
	public void updateHeadTeacherByHid(HeadTeacher headTeacher) {
		headTeacherDao.updateHeadTeacherByHid(headTeacher);

	}
	public void updateHeadTeacherStatusByHid(int hid) {
		headTeacherDao.updateHeadTeacherStatusByHid(hid);

		
	}
	public List<HeadTeacher> listHeadTeachers(int startRow, int pageSize) {
		List<HeadTeacher> hlist = headTeacherDao.listHeadTeachers(startRow,pageSize);
		return hlist;
	}
	public int countHeadTeacher() {
		int totalRecords = headTeacherDao.countHeadTeacher();
		return totalRecords;
	}
	public List<HeadTeacher> searchHeadteacher(HeadTeacher headTeacher, int startRow, int pageSize) {
		List<HeadTeacher> hlist = headTeacherDao.searchHeadteacher(headTeacher,startRow,pageSize);
		return hlist;
	}
	public int countFuzzyHeadTeacher(HeadTeacher headTeacher) {
		int totalRecords=headTeacherDao.countFuzzyHeadTeacher(headTeacher);
		return totalRecords;
	}

}
