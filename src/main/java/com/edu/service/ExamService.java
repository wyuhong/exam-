package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.ExamDao;
import com.edu.entity.Classes;
import com.edu.entity.Examination;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Vo;

@Service
public class ExamService {
	@Autowired
	private ExamDao examDao;

	public List<Examination> listExam() {
		List<Examination> elist = examDao.listExam();
		return elist;
	}
	public List<Classes> listClasses() {
		List<Classes> clist = examDao.listClasses();
		return clist;
	}
	public List<Examinationpaper> listExaminationpaper() {
		List<Examinationpaper> plist = examDao.listExaminationpaper();
		return plist;
	}

	public List<Examination> selectExam(Vo vo) {
		List<Examination> elist = examDao.selectExam(vo);
		return elist;
	}
	public void addexam(Examination exam) {
		examDao.addexam(exam);
		
	}
	public int selectTypeid(Vo vo) {
		int typeid = examDao.selectTypeid(vo);
		return typeid;
	}
	public List<Examinationpaper> selectPaper(int typeid) {
		List<Examinationpaper> list = examDao.selectPaper(typeid);
		return list;
	}
	public int selectClsid(Examination exam) {
		int clsid = examDao.selectClsid(exam);
		return clsid;
	}
	public void updateExam(Examination exam) {
		examDao.updateExam(exam);
		
	}
	public Examination listThisExam(int eid) {
		Examination exa = examDao.listThisExam(eid);
		return exa;
	}
	public List<Classes> listClsname() {
		List<Classes> clist = examDao.listClsname();
		return clist;
	}
	public int selectPaperid(Vo vo) {
		int paperid = examDao.selectPaperid(vo);
		return paperid;
	}
	public void deleteExam(int eid) {
		examDao.deleteExam(eid);
		
	}
	
	
	
	
}
