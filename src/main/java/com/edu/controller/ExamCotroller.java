package com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Classes;
import com.edu.entity.Examination;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Vo;
import com.edu.service.ExamService;

@Controller
public class ExamCotroller {
	@Autowired
	private ExamService examinatonService;
	/**
	 * 查询所有考试条目
	 * @return
	 */
	@RequestMapping("listExam")
	public ModelAndView listExam(){
		List<Examination> elist = examinatonService.listExam();
		List<Classes> clist = examinatonService.listClasses();
		List<Examinationpaper> plist = examinatonService.listExaminationpaper();
		return new ModelAndView("/jsps/examination/examination.jsp").addObject("elist", elist).addObject("clist", clist).addObject("plist", plist);
	}
	
	/**
	 * 按班级名/考卷名搜索考试条目
	 * @return
	 */
	@RequestMapping("selectExam")
	public ModelAndView selectExam(Vo vo){
		List<Examination> elist = examinatonService.selectExam(vo);
		List<Classes> clist = examinatonService.listClasses();
		List<Examinationpaper> plist = examinatonService.listExaminationpaper();
		return new ModelAndView("/jsps/examination/examination.jsp").addObject("elist", elist).addObject("clist", clist).addObject("plist", plist);
		
	}
	
	/**
	 * 新增页面中获取所有班级名
	 * @return
	 */
	@RequestMapping("listClasses")
	public ModelAndView listClasses(){
		List<Classes> clist = examinatonService.listClasses();
		return new ModelAndView("/jsps/examination/add_examination.jsp").addObject("clist", clist);
	}
	/**
	 * 新增考试条目
	 * @return
	 */
	@RequestMapping("addexam")
	public ModelAndView addexam(Examination exam){
		int clsid = examinatonService.selectClsid(exam);
		exam.setClsid(clsid);
		examinatonService.addexam(exam);
		return new ModelAndView("listExam.do");
		
	}
	
	/**
	 * ajax获得考卷id
	 * @return
	 */
	@RequestMapping("selectPaperid")
	@ResponseBody
	public List<Examinationpaper> selectPaperid(Vo vo){
		int typeid = examinatonService.selectTypeid(vo);
		List<Examinationpaper> list = examinatonService.selectPaper(typeid);
		return list;
	}
	
	@RequestMapping("listThisExam")
	public ModelAndView listThisExam(int eid){
		Examination exa= examinatonService.listThisExam(eid);
		List<Classes> clist = examinatonService.listClsname();
		return new ModelAndView("/jsps/examination/update_examination.jsp").addObject("exa", exa).addObject("clist", clist);
	}
	
	@RequestMapping("updateExam")
	public ModelAndView updateExam(Examination exam) {
		int clsid = examinatonService.selectClsid(exam);
		exam.setClsid(clsid);
		examinatonService.updateExam(exam);
		return new ModelAndView("listExam.do");
		
	}
	@RequestMapping("deleteExam")
	public ModelAndView deleteExam(int eid){
		examinatonService.deleteExam(eid);
		return new ModelAndView("listExam.do");
	}
}
