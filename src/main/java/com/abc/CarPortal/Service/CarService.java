package com.abc.CarPortal.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.CarPortal.Controller.CarController;
import com.abc.CarPortal.dao.CarRepository;
import com.abc.CarPortal.dto.Car;

@Service
@Transactional
public class CarService {
  
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

    @Autowired
    private CarRepository carRepository;
	
    public List<Car> ListAll (String keyword){
    	if(keyword != null) {
    		return carRepository.findAll(keyword);
    	}
    	return carRepository.findAll();
    }

//    public List<Car> ListAll(){
//    	
//    	return carRepository.findAll();
//    }
}

