package com.kce.dao;

import java.util.List;

import com.kce.model.LoginBean;
import com.kce.model.RegBean;

public interface RegDAO {
 RegBean reg(RegBean regBean);

List<RegBean> personalDetail(String name);

int validate(String name,String passw);
}