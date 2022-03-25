package com.mulcam.miniproj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.miniproj.dto.Fileupload;

@Mapper
@Repository
public interface FileuploadDAO {
	void insertFile(Fileupload fileupload) throws Exception;
	public List<Fileupload> fileList(Fileupload fileupload) throws Exception;

//	Integer selectMaxFileNum() throws Exception;
//	public List<Fileupload> getFileList(Fileupload fileupload) throws Exception;
//	File selectFile(int fileNum) throws Exception;
//
//	void deleteFile(int fileNum) throws Exception;
}
