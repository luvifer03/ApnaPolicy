package com.cognizant.cms.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.dao.UserRepository;
import com.cognizant.cms.models.User;
import com.cognizant.cms.models.UserLogin;

@Service
@Component
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepo;

	// logic to check login
	@Override
	public boolean login(UserLogin userLogin) {
		boolean flag = false;
		Optional<User> user = userRepo.findById(userLogin.getUserId());
		if (user.isPresent()) {
			User loggedInUser = user.get();
			flag = loggedInUser.getPassword().equals(userLogin.getPassword());
		}
		return flag;
	}

	@Override
	public Optional<User> getUser(int id) {
		return userRepo.findById(id);

	}

	/*
	 * @Override public void saveUser(User user) { System.out.println("user saved");
	 * userRepo.save(user);
	 * 
	 * }
	 */
	@Override
	public int nextId() {
		return userRepo.nextId();

	}

	@Override
	public String saveUser(User user) {
		
		String userId = "";
		// Optional<User> a = userRepo.findById(user.getId());
		// User a1 = userRepo.findBycontactNumber(user.getContactNumber());
		Optional<User> savingUser = userRepo.findByEmailId(user.getEmailId());
		if (savingUser.isPresent()) {
			userId="Member emailId already exists Try with another EmailId";
			System.out.println(userId);
		} else {
			User savedUser = userRepo.save(user);
			userId ="You have been successfully Registered with UserId: "+ String.valueOf(savedUser.getId())+" Note your UserId for reference.You'll be able to login once the admin approves";
			System.out.println(userId);

		}

		return userId;
	}
	
	@Override
	public List<User> getAll(){
		return userRepo.findAll();
	}

	@Override
	public User save(User user) {
		return userRepo.save(user);
	}
}
