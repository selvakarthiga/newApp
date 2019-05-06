package com.kce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kce.dao.LoginDAO;
import com.kce.model.LoginBean;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO loginDAO;

}
