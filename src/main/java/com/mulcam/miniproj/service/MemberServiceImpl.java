package com.mulcam.miniproj.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.miniproj.dao.MemberDAO;
import com.mulcam.miniproj.dto.Member;

@Service
public class MemberServiceImpl implements  MemberService {
	
	@Autowired
	MemberDAO memberDAO;

	@Override
	public void myjoin(Member member) throws Exception {
		memberDAO.insertMember(member);
	}
	
	@Override
	public boolean login(String id, String Password) throws Exception {
		try {
			Member mem = memberDAO.queryMember(id);
			if(mem == null) throw new Exception();
			if(Password.equals(mem.getPassword())) {
				return true;
			}else {
				throw new Exception();
			}
		} catch(Exception e) {
			throw new Exception("로그인 오류");
		}
	}
	
	@Override
	public boolean idOverlap(String id) throws Exception {
		Member mem = memberDAO.queryMember(id);
		if(mem != null) return true;
		return false;
	}

}
