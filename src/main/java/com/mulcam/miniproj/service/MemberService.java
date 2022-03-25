package com.mulcam.miniproj.service;

import com.mulcam.miniproj.dto.Member;

// Service 매서드 선언한 하고 구현은 impl에서

public interface MemberService {
	void myjoin(Member member) throws Exception;
	boolean login(String id, String password) throws Exception;
	boolean idOverlap(String id) throws Exception;

}
