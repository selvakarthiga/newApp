package com.kce.service;

import java.util.List;

import com.kce.model.LoginBean;
import com.kce.model.RegBean;

public interface RegService {
	
	RegBean reg(RegBean regBean) ;

	List<RegBean> personalDetail(String name);

	int validate(String name,String passw);


}
