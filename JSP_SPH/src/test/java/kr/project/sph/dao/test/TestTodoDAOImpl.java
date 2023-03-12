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

import kr.project.sph.dto.MemberVO;
import kr.project.sph.dto.ToDoVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/project/sph/context/dataSource-context.xml")
@Transactional
public class TestTodoDAOImpl {
	
	Date date = new Date();
	
	@Autowired
	private SqlSession session;
	
	@Test
	public void testSelectTodoByTNO()throws Exception{
		int tno = 1;
		
		ToDoVO todo = session.selectOne("Todo-Mapper.selectTodoByTNO",tno);
		
		System.out.println(todo.getTno());
		
	}
	
	
	  @Test
	  
	  @Rollback public void testInsertTodo() throws Exception{ 
		  ToDoVO todo = new ToDoVO(); 
		  
		  todo.setTno(12);
		  todo.setTitle("test");
		  todo.setContent("test");
		  todo.setCom("1");
		  todo.setImp("1");
		  todo.setRegDate(date);
		  todo.setToDoDate(date);
		  todo.setToDoTime(date);
		  todo.setWriter(102121);
	  
		  session.update("Todo-Mapper.insertTodo",todo);

		  ToDoVO getTodo = session.selectOne("Todo-Mapper.selectTodoByTNO",todo.getTno());

		 // Assert.assertEquals(todo.getTno(), getTodo.getTno());
		  System.out.println(todo.getTno());
		  System.out.println(getTodo.getTno());
	  }
	 
	
	
	
	

}
