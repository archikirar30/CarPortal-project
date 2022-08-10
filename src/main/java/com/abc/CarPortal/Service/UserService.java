package com.abc.CarPortal.Service;

import java.io.IOException;
import java.util.List;

import com.abc.CarPortal.dto.Bid;
import com.abc.CarPortal.dto.Car;
import com.abc.CarPortal.dto.User;

public interface UserService {
	
	public void addUser(User us); // adding the user details to the database
	
	public Car addCar(Car car); // adding the user details to the database
	
	public User showProfile(String name);//showing user profile
	
	public Car showCar(Long id );// viewing car information by id 
	
	public User showUser(Long id );// viewing User information by id 
	
	public Bid showBid(Long id ); //viewing the bid details by id 
	
	public Car updateCar (Long id);//updating the info of cars
	
	public User updateUser(Long id); //for updating the details of user
	
	//public List<Car> ListAll (String keyword);
	
	//public List<Car> search (String keyword); //Searching car by keyword cid , model name , brand , color , registration
	
//	public boolean saveEmployee(CarsDto cars) throws IOException;;

}
