package com.kce.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kce.dao.BusDao;
import com.kce.model.DetailsBean;
import com.kce.model.RegBean;

@Service("busService")
	public class BusServiceImpl implements BusService {
		
		@Autowired
		private BusDao busDao;
		
		@Override
		@Transactional
			public List<DetailsBean> ab() {
				return busDao.ab();
		}
		
		@Override
		@Transactional
		public void Ab(DetailsBean add)
		{
			
			busDao.Ab(add);
		}
		
		@Override
		@Transactional
			public List<DetailsBean> vb(String from,String to) {
				return busDao.vb(from,to);
		}

		@Override
		@Transactional
			public List<DetailsBean> sbus(String from,String to,String busname) {
				return busDao.sbus(from,to,busname);
		}
		
		@Override
		@Transactional
			public List<DetailsBean> bbus(String from,String to,String busdate) {
				return busDao.bbus(from,to,busdate);
		}
		
		/*@Override
		@Transactional
			public List<DetailsBean> search1(String from,String to) {
				return busDao.search1(from,to);
		}*/
		

}
