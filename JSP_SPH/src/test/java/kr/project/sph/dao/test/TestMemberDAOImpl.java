package kr.project.sph.dao.test;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.command.SearchDateCriteria;
import kr.project.sph.dto.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/dataSource-context.xml")
@Transactional
public class TestMemberDAOImpl {
	
	Date date = new Date();
	
	@Autowired
	private SqlSession session;
	
	@Test
	public void testMemberListbyDate() throws Exception{
		
		SearchDateCriteria datecri = new SearchDateCriteria("20010411", "20230309");
		SearchCriteria cri = new SearchCriteria(1,100,"i","i","r",datecri);
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<MemberVO> memberList = session.selectList("Member-Mapper.selectSearchMemberList",cri,rowBounds);
		
		System.out.println(datecri.getYmdStartDate());
		System.out.println(datecri.getYmdEndDate());
		for(int i=0;i<memberList.size();i++) {
			MemberVO member = new MemberVO();
			member = memberList.get(i);
			System.out.println(member.getName());
			System.out.println(session);
		}
		
		Assert.assertEquals(2, memberList.size());
	}
	
	@Test
	public void testMemberList() throws Exception{
		SearchCriteria cri = new SearchCriteria(1,100,"r","i");
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<MemberVO> memberList =session.selectList("Member-Mapper.selectSearchMemberList",cri,rowBounds);
		MemberVO member = new MemberVO();
		
		for(int i = 0; i<memberList.size();i++) {
			member = memberList.get(i);
			System.out.println(member.getRegDate());
		}
		
		Assert.assertEquals(3, memberList.size());
	}
	
	
	@Test
	public void testSelectMemberByMNO() throws Exception{
		int mno = 1010;
		
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByMNO",mno);
		
		Assert.assertNotNull(member);
	}
	
	@Test
	@Rollback
	public void testInsertMember() throws Exception{
		MemberVO insertMember = new MemberVO();
		insertMember.setMno(1111);
		insertMember.setId("test");
		insertMember.setPwd("test");
		insertMember.setName("test");
		insertMember.setPhone("01077778888");
		insertMember.setJoinDate(date);
		insertMember.setDepartCode("M01111");
		
		session.update("Member-Mapper.insertMember", insertMember);
		
		MemberVO getMember = session.selectOne("Member-Mapper.selectMemberByMNO",insertMember.getMno());
		
		Assert.assertEquals(insertMember.getId(), getMember.getId());
		
	}
	
	@Test
	@Rollback
	public void testUpdateMember() throws Exception{
		//테스트 하기전 참조관계 확인
		//널허용값 확인
		//DB에 값이 없어서 insert와 병합
		MemberVO insertMember = new MemberVO();
		insertMember.setMno(1111);
		insertMember.setId("test");
		insertMember.setPwd("test");
		insertMember.setName("test");
		insertMember.setPhone("01077778888");
		insertMember.setJoinDate(date);
		insertMember.setDepartCode("M01111");
		
		session.update("Member-Mapper.insertMember", insertMember);
		
		String temp = "testUpdate";
		
		MemberVO updateMember = session.selectOne("Member-Mapper.selectMemberByMNO",1111);
		updateMember.setId(temp);
		updateMember.setPwd(temp);
		updateMember.setName(temp);
		
		session.update("Member-Mapper.updateMember", updateMember );
		
		MemberVO testMember = session.selectOne("Member-Mapper.selectMemberByMNO",1111);
		Assert.assertEquals(updateMember.getId(), testMember.getId());
		
	}
	
	
	
}
