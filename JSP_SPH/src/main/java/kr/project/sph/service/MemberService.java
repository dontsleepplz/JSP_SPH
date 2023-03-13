package kr.project.sph.service;

import java.sql.SQLException;
import java.util.Map;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.MemberVO;
import kr.project.sph.exception.InvalidPasswordException;
import kr.project.sph.exception.NotFoundIDException;

public interface MemberService {
	
	Map<String, Object> getMemberListForPage (SearchCriteria cri) throws Exception;
	
	MemberVO getMember(int mno) throws Exception;
	
	MemberVO getMemberById(String id) throws Exception;
	
	void regist(MemberVO member) throws Exception;
	
	void modify(MemberVO member) throws Exception;
	
	void remove(int mno) throws Exception;
	
	void login(String id, String pwd) throws InvalidPasswordException, NotFoundIDException, SQLException;
	
}
