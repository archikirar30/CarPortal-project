package com.abc.CarPortal.Service;

import java.util.List;

import com.abc.CarPortal.dto.Bid;
import com.abc.CarPortal.dto.Car;
import com.abc.CarPortal.dto.User;

public interface AdminService {
	
	public void addBid(Bid bid);// for adding the value of appointment data in database
	
	public List<Bid> showAllBidding();//for displaying all bids/appointment of cars
	
	public List<User> showAllUser();//for displaying all user of abc portal
	
	public List<Car> showAllCar();//for displaying all the cars 
	
	public void deleteCar(Long id); //for deleting the car by car id 
	
	public void deleteUser(Long id);// for deleting the user by user id 

}
