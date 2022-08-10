package com.abc.CarPortal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.CarPortal.dto.CarsDto;

public interface CarsDetailRepository extends JpaRepository< CarsDto, Long>{

}
