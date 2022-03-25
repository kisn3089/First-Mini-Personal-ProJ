package com.mulcam.miniproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.miniproj.dao.FileuploadDAO;
import com.mulcam.miniproj.dto.Fileupload;

@Service
public class FileuploadServiceImpl implements FileuploadService {
	
	@Autowired
	FileuploadDAO fileuploadDAO;
	
	@Override
	public void insertFile(Fileupload fileupload) throws Exception {
		fileuploadDAO.insertFile(fileupload);
	}

	@Override
	public List<Fileupload> allFileInfo(Fileupload fileupload) throws Exception {
		return fileuploadDAO.fileList(fileupload);
	}


//	@Override
//	public String[] queryByID(String id) throws Exception {
//		return fileuploadDAO.getFileList(fileupload);
//	}

//
//	@Override
//	public void removeFile(int fileNum, String filePass) throws Exception {
//		//1.입력된 비밀번호가 원본의 비밀번호와 같은지 체크
//		String password = fileDAO.selectPassword(fileNum);
//		//2.비밀번호가 같으면, 글 삭제
//		if(filePass.equals(password)) {
//			fileDAO.deleteBoard(fileNum);
//		}	else { //3.비밀번호가 다르면 권한없음 예외
//			throw new Exception("수정 권한 없음");
//		}
//	}

}
