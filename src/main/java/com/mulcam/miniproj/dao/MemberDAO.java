package com.mulcam.miniproj.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.miniproj.dto.Member;

@Mapper
@Repository
public interface MemberDAO {

	void insertMember(Member member) throws Exception;
	public Member queryMember(String id) throws Exception;

}
