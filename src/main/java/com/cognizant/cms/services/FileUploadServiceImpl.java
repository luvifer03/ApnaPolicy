package com.cognizant.cms.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cognizant.cms.dao.FileUploadRepository;
import com.cognizant.cms.models.FileUpload;
@Component
public class FileUploadServiceImpl implements FileUploadService {

	@Autowired
	private FileUploadRepository fileRepo;

	@Override
	public FileUpload save(FileUpload fileUpload) {
		return fileRepo.save(fileUpload);
	}

}
