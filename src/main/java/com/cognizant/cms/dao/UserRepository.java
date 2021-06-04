package com.cognizant.cms.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cognizant.cms.models.User;


public interface UserRepository extends JpaRepository<User, Integer> {
	@Query("select max(id) from User")
	public int nextId();
	public User findBycontactNumber(String phno);
	public Optional<User> findByEmailId(String email);
	public Optional<User> findById(int id);
	
	
	
}
