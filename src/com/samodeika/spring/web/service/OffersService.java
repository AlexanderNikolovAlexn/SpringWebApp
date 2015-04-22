package com.samodeika.spring.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.samodeika.spring.web.dao.Offer;
import com.samodeika.spring.web.dao.OffersDAO;

import java.util.List;

@Service("offersService")
public class OffersService {

	private OffersDAO offersDao;		
	
	@Autowired
	public void setOffersDao(OffersDAO offersDao) {
		this.offersDao = offersDao;
	}

	public List<Offer> getCurrent(){
		return offersDao.getOffers();
	}
	
	public void create(Offer offer) {
		offersDao.create(offer);
	}

	public void throwTestException() {
		offersDao.getOffer(-1);
	}
}
