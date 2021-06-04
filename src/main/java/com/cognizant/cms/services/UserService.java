package com.cognizant.cms.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.User;
import com.cognizant.cms.models.UserLogin;

@Service
@Component
public interface UserService {
	public boolean login(UserLogin userLogin);
	public Optional<User> getUser(int id);
	public String saveUser(User user);
	public int nextId();
	public List<User> getAll();
	//public Optional<User> findById(int id);
	public User save(User user);

}
