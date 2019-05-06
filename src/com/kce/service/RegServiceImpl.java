package com.kce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kce.dao.RegDAO;
import com.kce.model.DetailsBean;
import com.kce.model.LoginBean;
import com.kce.model.RegBean;


@Service("regService")
public class RegServiceImpl implements RegService {
	
	@Autowired
	private RegDAO regDAO;
	
	@Override
	@Transactional
	public RegBean reg(RegBean regBean)
	{
		RegBean a=(RegBean)regDAO.reg(regBean);
		return a;
	}
	
	@Override
	@Transactional
		public List<RegBean> personalDetail(String name) {
			return regDAO.personalDetail(name);
	}
	

	@Override
	@Transactional
	public int validate(String name, String passw) {
		return regDAO.validate(name, passw);
	}


}
