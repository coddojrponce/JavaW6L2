package com.robertp.testW6L1.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.robertp.testW6L1.models.LoginUser;
import com.robertp.testW6L1.models.User;
import com.robertp.testW6L1.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public User register(User newUser,BindingResult result) {
		
		Optional<User> exists = userRepo.findByEmail(newUser.getEmail());
		
		if(exists.isPresent()) {
			result.rejectValue("email", "Match", "Email already in use");
			
		}
		
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Match","Passwords must match");
		}
		
		
		
		if(result.hasErrors()) {
			return null;
		}
		
		String hashedpw = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		
		newUser.setPassword(hashedpw);
		return userRepo.save(newUser);
		
		
		
		
	}
	
	public User login(LoginUser newLogin,BindingResult result) {
		
		Optional<User> exists = userRepo.findByEmail(newLogin.getEmail());
		
		if(!exists.isPresent()) {
			result.rejectValue("email", "Matches","User not found");
			return null;
		}
		
		User user = exists.get();
		
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "Matches","Invalid Password");
		}
		
		if(result.hasErrors()) {
			return null;
		}
		
		return user;
		
	}
	
	public User findById(Long id) {
		Optional<User> exists = userRepo.findById(id);
		if(exists.isPresent()) {
			return exists.get();
		}
		return null;
	}

}
