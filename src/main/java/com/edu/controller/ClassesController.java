package com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Classes;
import com.edu.entity.Vo;
import com.edu.service.ClassesService;

@Controller

public class ClassesController {
	@Autowired
	private ClassesService classesService;
	
	/**
	 * 展示班级信息
	 * @return
	 */
	@RequestMapping("listClass")
	public ModelAndView listClass(){
		List<Classes> clist = classesService.findClass();
		List<Classes> alist = clist;
		return new ModelAndView("/jsps/classes/class.jsp").addObject("clist",clist).addObject("alist",alist);
	}

	@RequestMapping("toUpdateClass")
	public ModelAndView toUpdateClass(){
		List<Classes> clist = classesService.findClass();
		return new ModelAndView("/jsps/classes/add.jsp").addObject("clist",clist);
	}
	/**
	 * 添加班级信息
	 */
	@RequestMapping("addClass")
	public String addClass(Classes classes ){
		classesService.addClass(classes);
		return "redirect:/listClass.do";	
	}
	@RequestMapping("searchClass")
	public ModelAndView searchClass(Vo vo){
		if(vo.getClsname()!=null&&!"".equals(vo.getClsname().trim())){
			vo.setClsname("%"+vo.getClsname()+"%");
		}
		if(vo.getHname()!=null&&!"".equals(vo.getHname().trim())){
			vo.setHname("%"+vo.getHname()+"%");
		}
		if(vo.getTname()!=null&&!"".equals(vo.getTname().trim())){
			vo.setTname("%"+vo.getTname()+"%");
		}
		List<Classes> clist = classesService.findClassByinfo(vo);
		List<Classes> alist = classesService.findClass();
		return new ModelAndView("/jsps/classes/class.jsp").addObject("clist",clist).addObject("alist",alist);
	}
	
	
}
