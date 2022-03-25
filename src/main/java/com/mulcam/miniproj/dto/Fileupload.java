package com.mulcam.miniproj.dto;

import java.sql.Date;

public class Fileupload {
	private String id;
	private int file_num;
	private String filename;
	private int file_readcount;
	private Date file_date;
	
	public Fileupload() {}
	
	public Fileupload(String id, int file_num, String filename,
			int file_readcount, Date file_date) {
		this.id=id;
		this.file_num=file_num;
		this.filename=filename;
		this.file_readcount=file_readcount;
		this.file_date=file_date;
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBoard_num() {
		return file_num;
	}
	public void setBoard_num(int file_num) {
		this.file_num = file_num;
	}
	public String getfilename() {
		return filename;
	}
	public void setfilename(String filename) {
		this.filename = filename;
	}
	public int getfile_readcount() {
		return file_readcount;
	}
	public void setfile_readcount(int board_readcount) {
		this.file_readcount = board_readcount;
	}
	public Date getFile_date() {
		return file_date;
	}
	public void setFile_date(Date file_date) {
		this.file_date = file_date;
	}

}
