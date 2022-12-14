package com.abc.CarPortal.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.abc.CarPortal.dao.UserRepository;
import com.abc.CarPortal.dto.User;
import com.abc.CarPortal.Security.ApplicationUserDetail;

@Service
public class CustomService implements UserDetailsService {
	 @Autowired
		UserRepository userrepo;
	    User user;
		@Override
		public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
			// TODO Auto-generated method stub
			user=userrepo.findByUserName(username);
			if(user==null) {
				System.out.println("User name is Invalid");
			}
			return new ApplicationUserDetail(user);
		}

}
