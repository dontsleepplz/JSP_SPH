package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.MemberVO;
import kr.project.sph.dto.ToDoVO;

public class ToDoDAOImpl implements ToDoDAO {

	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<ToDoVO> selectSearchTodoList(SearchCriteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		List<ToDoVO> todoList = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		todoList = session.selectList("Todo-Mapper.selectSearchTodoList",cri,rowBounds); 
		return todoList;
	}
	
	@Override
	public int selectSearchTodoListCount(SearchCriteria cri) throws SQLException {
		int count=0;
		count=session.selectOne("TodoMapper.selectSearchTodoListCount",cri);
		return count;
	}

	@Override
	public ToDoVO selectTodoByTNO(int tno) throws SQLException {
		ToDoVO todo = session.selectOne("Todo-Mapper.selectTodoByTNO",tno);
		return todo;
	}

	@Override
	public int selectTodoSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Todo-Mapper.selectTodoSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertTodo(ToDoVO todo) throws SQLException {
		session.update("Todo-Mapper.insertTodo",todo);
	}

	@Override
	public void updateTodo(ToDoVO todo) throws SQLException {
		session.update("Todo-Mapper.updateTodo",todo);
	}

	@Override
	public void deleteTodo(int tno) throws SQLException {
		session.update("Todo-Mapper.deleteTodo",tno);
	}

}
