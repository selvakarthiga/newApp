package com.kce.dao;

import java.util.List;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kce.model.DetailsBean;
import com.kce.model.RegBean;

@Repository("busDao")
public class BusDaoImpl implements BusDao {

	@Autowired
	 SessionFactory sessionFactory;

	@Override
	public List<DetailsBean> ab() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from DetailsBean");
		List<DetailsBean> ob = query.list();
		return ob;
	}

	
	
	
	@Override
	public void Ab(DetailsBean add) {
		Session session = sessionFactory.getCurrentSession();
		session.save(add);
	}

	@Override
	public List<DetailsBean> vb(String from, String to) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from DetailsBean d where d.from='" + from + "' and d.to='" + to + "'");
		List<DetailsBean> obj = query.list();
		return obj;

	}

	@Override
	public List<DetailsBean> sbus(String from, String to, String busname) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from DetailsBean db where db.from='" + from + "' and db.to='" + to + "' and db.name='" + busname + "'");
		List<DetailsBean> obj = query.list();
		return obj;
	}

	@Override
	public List<DetailsBean> bbus(String from, String to, String busdate) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(
				"from DetailsBean db where db.from='" + from + "' and db.to= '" + to + "' and db.datee='" + busdate + "'");
		List<DetailsBean> obj = query.list();
		return obj;
	}
	
	/*@Override
	public List<DetailsBean> search1(String from, String to) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(
				"select name from DetailsBean db where db.from='" + from + "' and db.to= '" + to + "'");
		List<DetailsBean> obj = query.list();
		return obj;
	}*/

}
