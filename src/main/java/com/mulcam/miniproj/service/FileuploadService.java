package com.mulcam.miniproj.service;

import java.util.List;

import com.mulcam.miniproj.dto.Fileupload;

public interface FileuploadService {
	void insertFile(Fileupload fileupload) throws Exception;
	List<Fileupload> allFileInfo(Fileupload fileupload) throws Exception;

//	List<Fileupload> getFileList(Fileupload fileupload) throws Exception;
//	String[] queryByID(String id)throws Exception;
//	
//	File getboard(int boardNum) throws Exception;
//	void removeBoard(int boardNum) throws Exception;
}
