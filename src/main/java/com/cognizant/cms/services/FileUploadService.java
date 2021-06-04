package com.cognizant.cms.services;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.FileUpload;

@Service
@Component
public interface FileUploadService {
	
	public FileUpload save(FileUpload fileupload);
	

}
