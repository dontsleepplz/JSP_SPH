package kr.project.sph.dao.test;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.project.sph.dto.ScheduleVO;
import kr.project.sph.dto.ToDoVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/dataSource-context.xml")
@Transactional
public class TestScheduleDAOImpl {

	Date date = new Date();
	
	@Autowired
	private SqlSession session;
	
//	@Test
//	public void testSelectScheduleBySNO()throws Exception{
//		int sno = 1;
//		
//		ScheduleVO schedule = session.selectOne("Schedule-Mapper.selectScheduleBySNO",sno);
//		
//		System.out.println(schedule.getSno());
//	}
	
//	@Test
//	public void testInsertSchedule()throws Exception{
//		ScheduleVO schedule = new ScheduleVO();
//		
//		schedule.setSno(12);
//		schedule.setTitle("test");
//		schedule.setContent("test1");
//		schedule.setAuthority("123");
//		schedule.setStartDate(date);
//		schedule.setEndDate(date);
//		schedule.setRegDate(date);
//		schedule.setWriter(1234);
//		session.update("Schedule-Mapper.insertSchedule",schedule);
//		
//		ScheduleVO getSch= session.selectOne("Schedule-Mapper.selectScheduleBySNO", schedule.getSno());
//		
//		System.out.println(schedule.getSno());
//		System.out.println(getSch.getSno());
//		
//	}
	  @Test
	  @Rollback
	  public void testupdateTodo() throws Exception{
		  ScheduleVO schedule = session.selectOne("Schedule-Mapper.selectScheduleBySNO",1);
		   
		   schedule.setTitle("testtest");
		   schedule.setContent("test하는 중");
		   
		   session.update("Schedule-Mapper.updateSchedule",schedule);
		   
		   ScheduleVO tesrschedule = session.selectOne("Schedule-Mapper.selectScheduleBySNO",1);

		  Assert.assertEquals(schedule.getSno(), tesrschedule.getSno());
	   }
	
}
