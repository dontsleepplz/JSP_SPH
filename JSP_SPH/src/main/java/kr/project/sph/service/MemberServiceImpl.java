package kr.project.sph.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.project.sph.command.PageMaker;
import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dao.MemberDAO;
import kr.project.sph.dto.MemberVO;
import kr.project.sph.exception.InvalidPasswordException;
import kr.project.sph.exception.NotFoundIDException;

public class MemberServiceImpl implements MemberService{
	
	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public Map<String, Object> getMemberListForPage(SearchCriteria cri) throws Exception {
		Map<String,Object> dataMap = new HashMap<String,Object>();
		
		List<MemberVO> memberList = memberDAO.selectSearchMemberList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectSearchMemberListCount(cri));
		
		dataMap.put("memberList", memberList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public MemberVO getMember(int mno) throws Exception {
		MemberVO member = memberDAO.selectMemberByMNO(mno);
		return member;
	}

	@Override
	public void regist(MemberVO member) throws Exception {
		memberDAO.insertMember(member);
	}

	@Override
	public void modify(MemberVO member) throws Exception {
		memberDAO.updateMember(member);
	}

	@Override
	public void remove(int mno) throws Exception {
		memberDAO.deleteMember(mno);
	}

	@Override
	public void login(String id, String pwd) throws InvalidPasswordException, NotFoundIDException, SQLException {
		MemberVO member = memberDAO.selectMemberById(id);
		if(member == null) throw new NotFoundIDException();
		if(!pwd.equals(member.getPwd())) throw new InvalidPasswordException();
	}

	@Override
	public MemberVO getMemberById(String id) throws Exception {
		MemberVO member = memberDAO.selectMemberById(id);
		return member;
	}

}
