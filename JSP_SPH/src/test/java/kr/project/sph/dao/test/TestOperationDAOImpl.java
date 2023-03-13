package kr.project.sph.dao.test;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.project.sph.dto.OperationVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/dataSource-context.xml")
@Transactional
public class TestOperationDAOImpl {

	Date date = new Date();
	
	@Autowired
	private SqlSession session;
	
	@Test
	public void testSelectScheduleBySNO()throws Exception{
		int ono = 1;
		
		OperationVO operation = session.selectOne("Operation-Mapper.selectOperationByONO",ono);
		System.out.println(operation.getOno());
	}
	
	
}
