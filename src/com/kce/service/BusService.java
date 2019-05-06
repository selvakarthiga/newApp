package com.kce.service;

import java.util.List;

import com.kce.model.DetailsBean;
import com.kce.model.RegBean;

public interface BusService {

	List<DetailsBean> ab();
	
	void Ab(DetailsBean add) ;
	
	List<DetailsBean> vb(String from, String to);
	
	List<DetailsBean> sbus(String from, String to,String busname);
	
	List<DetailsBean> bbus(String from, String to,String busdate);

	//List<DetailsBean> search1(String from, String to);
	
	


}

