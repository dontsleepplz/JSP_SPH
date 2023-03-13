package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.MemberVO;

public interface MemberDAO {
	
	List<MemberVO> selectSearchMemberList(SearchCriteria cri) throws SQLException;
	
	int selectSearchMemberListCount(SearchCriteria cri)throws SQLException;
	
	MemberVO selectMemberByMNO(int mno)throws SQLException;
	
	int selectMemberSequenceNextValue() throws SQLException;
	
	void insertMember(MemberVO member) throws SQLException;
	
	void updateMember(MemberVO member) throws SQLException;
	
	void deleteMember(int mno) throws SQLException;
	
	MemberVO selectMemberById(String id) throws SQLException;
	
}
