package kr.project.sph.dao;

import java.sql.SQLException;

import kr.project.sph.dto.ContactGroupVO;

public interface ContactGroupDAO {
	
	void insertGroup(ContactGroupVO contactGroup) throws SQLException;
	
	void updateMember(ContactGroupVO contactGroup) throws SQLException;
	
	void deleteMember(int cnum) throws SQLException;

}
