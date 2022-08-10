package com.abc.CarPortal.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.abc.CarPortal.dto.Car;

@Repository
public interface CarRepository extends JpaRepository<Car, Long>{
	
	@Query("SELECT c FROM Car c WHERE c.carname LIKE %?1%"
			+ "OR c.model LIKE %?1%"
			+ "OR c.color LIKE %?1%"
			+ "OR c.price LIKE %?1%"
			+ "OR c.registration LIKE %?1%"
			+ "OR c.state LIKE %?1%"
			+ "OR c.country LIKE %?1%"
			+ "OR c.userNew LIKE %?1%")
	public List<Car> findAll (String keyword);

}
