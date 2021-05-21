package com.icia.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.ex.dao.ExDAO;
import com.icia.ex.dto.ExDTO;

@Service
public class ExService {
	
	@Autowired
	private ExDAO edao; 
	
	private ModelAndView mav;
//	public void insert1(String col1,String col2,String col3) {
//		
//	}

	public void insert(ExDTO dto) {
		edao.insert(dto);
		
	}
	
	public ModelAndView select() {
		 mav = new ModelAndView();
		 
		 List<ExDTO> dataList = edao.select();
		 
		 System.out.println("ExService.select()");
		 for (int i = 0; i < dataList.size(); i++) {
			System.out.println(dataList.get(i));
		}
		mav.addObject("selectList", dataList);
		mav.setViewName("select");
		return mav;
		
	}
}
