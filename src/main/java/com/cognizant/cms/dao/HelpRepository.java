package com.cognizant.cms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.cms.models.Help;
@Repository
public interface HelpRepository extends JpaRepository<Help, Integer> {

}
