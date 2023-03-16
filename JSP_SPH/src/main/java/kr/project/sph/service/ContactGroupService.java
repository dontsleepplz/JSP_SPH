package kr.project.sph.service;

import java.util.Map;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ContactGroupVO;
import kr.project.sph.dto.DepartVO;
import kr.project.sph.dto.MemberVO;

public interface ContactGroupService {

	Map<String, Object> getMemberListForPage(SearchCriteria cri) throws Exception;

	MemberVO getMember(int mno) throws Exception;

	MemberVO getMemberById(String id) throws Exception;
	
	Map<String, Object> getDepartListForPage(SearchCriteria cri) throws Exception;
	
	DepartVO getDepart(String departCode) throws Exception;
	
	void regist(ContactGroupVO contactGroup) throws Exception;
	
	void modify(ContactGroupVO contactGroup) throws Exception;
	
	void remove(int cnum) throws Exception;

}
