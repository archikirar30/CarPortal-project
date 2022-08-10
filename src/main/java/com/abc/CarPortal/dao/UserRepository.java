package com.abc.CarPortal.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.abc.CarPortal.dto.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String username);

}
