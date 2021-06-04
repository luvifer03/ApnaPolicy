package com.cognizant.cms.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.cms.models.FileUpload;

public interface FileUploadRepository extends JpaRepository<FileUpload, Integer> {

}
