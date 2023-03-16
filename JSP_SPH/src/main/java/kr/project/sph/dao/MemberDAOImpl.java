package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectSearchMemberList(SearchCriteria cri) {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<MemberVO> memberList = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		memberList = session.selectList("Member-Mapper.selectSearchMemberList", cri,rowBounds );
		
		return memberList;
	}

	@Override
	public int selectSearchMemberListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		count = session.selectOne("Member-Mapper.selectSearchMemberListCount",cri);
		return count;
	}

	@Override
	public MemberVO selectMemberByMNO(int mno) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByMNO", mno);
		return member;
	}

	@Override
	public int selectMemberSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Member-Mapper.selectMemberSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.insertMember",member);
		
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMember",member);
		
	}

	@Override
	public void deleteMember(int mno) throws SQLException {
		session.update("Member-Mapper.deleteMember",mno);
		
	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberById",id);
		return member;
	}

	@Override
	public MemberVO selectMemberByPhone(String phone) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByPhone",phone);
		return member;
	}

}
