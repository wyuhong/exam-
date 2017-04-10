package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.Classes;
import com.edu.entity.Examination;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Vo;

@Repository
public interface ExamDao {

	List<Examination> listExam();

	List<Classes> listClasses();

	List<Examinationpaper> listExaminationpaper();

	List<Examination> selectExam(Vo vo);

	void addexam(Examination exam);

	int selectTypeid(Vo vo);

	List<Examinationpaper> selectPaper(int typeid);

	int selectClsid(Examination exam);

	void updateExam(Examination exam);

	Examination listThisExam(int eid);

	List<Classes> listClsname();

	int selectPaperid(Vo vo);

	void deleteExam(int eid);

	

}
