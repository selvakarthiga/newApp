
package com.kce.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kce.model.DetailsBean;
import com.kce.model.LoginBean;
import com.kce.model.RegBean;


@Repository("regDAO")
public class RegDAOImpl implements RegDAO {
	
	@Autowired
	 SessionFactory sessionFactory;
	
	@Override
	public RegBean reg(RegBean regBean)
	{
		sessionFactory.getCurrentSession().save(regBean);
		return regBean;		
		
	}
	

	@Override
	public List<RegBean> personalDetail(String name) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from RegBean db where db.name='" + name + "'");
		List<RegBean> obj = query.list();
		return obj;
	}
	
	@Override
	public int validate(String name, String passw) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from RegBean l where l.name = '" + name + "'");
		List<RegBean> ob = q.list();
		int flag = 0;
		for(RegBean t: ob) {
			if(passw.equals(t.getPass()))
				flag = 1;
			else
				flag = 0;
		}
		return flag;
	}
	
	  /*LoginBean l = (LoginBean)
	  sessionFactory.getCurrentSession().get(LoginBean.class, name);
	   if(l.getPass().equals(passw)&& l.getName().equals(name))
	   {
	    return l;
	     } 
	   return null;*/
	 
	

}
