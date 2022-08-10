package com.abc.CarPortal.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.CarPortal.dao.BidRepository;
import com.abc.CarPortal.dao.CarRepository;
import com.abc.CarPortal.dao.UserRepository;
import com.abc.CarPortal.dto.Bid;
import com.abc.CarPortal.dto.Car;
import com.abc.CarPortal.dto.User;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Autowired 
	UserRepository userrepo;
	
	@Autowired 
	BidRepository bidrepo;
	
	@Autowired 
	CarRepository carrepo;
	
    Bid bid;
	List <Bid> UserList = new ArrayList<Bid>();
	
	@Override
	public void addBid(Bid bid) {
		// TODO Auto-generated method stub
		bidrepo.save(bid);
		
	}
	
	@Override
	public List<Bid> showAllBidding() {
		List<Bid> allData = bidrepo.findAll();
		return allData;
	}
	
	@Override
	public List<User> showAllUser() {
		List<User> allData = userrepo.findAll();
		return allData;
	}
	
	@Override
	public List<Car> showAllCar() {
		// TODO Auto-generated method stub
		List<Car> CarData = carrepo.findAll();
		return CarData;
	}
	
	@Override
	public void deleteCar(Long id) {
		// TODO Auto-generated method stub
		carrepo.deleteById(id);
		
	}
	
	@Override
	public void deleteUser(Long id) {
		// TODO Auto-generated method stub
		userrepo.deleteById(id);
		
	}

}
