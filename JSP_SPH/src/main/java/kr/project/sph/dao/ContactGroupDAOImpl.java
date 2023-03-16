package kr.project.sph.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.project.sph.dto.ContactGroupVO;

public class ContactGroupDAOImpl implements ContactGroupDAO{
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public void insertGroup(ContactGroupVO contactGroup) throws SQLException {
		session.update("ContactGroup-Mapper.insertGroup",contactGroup);
		
	}

	@Override
	public void updateMember(ContactGroupVO contactGroup) throws SQLException {
		session.update("ContactGroup-Mapper.updateMember",contactGroup);
		
	}

	@Override
	public void deleteMember(int cnum) throws SQLException {
		session.update("ContactGroup-Mapper.deleteMember",cnum);
		
	}
	

}
