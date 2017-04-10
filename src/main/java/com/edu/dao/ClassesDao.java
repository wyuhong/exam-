package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.Classes;
import com.edu.entity.Vo;

@Repository
public interface ClassesDao {

	List<Classes> findClass();

	void addClass(Classes classes);

	List<Classes> findClassByinfo(Vo vo);



}
