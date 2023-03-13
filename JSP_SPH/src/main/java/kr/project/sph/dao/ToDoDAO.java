package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ToDoVO;

public interface ToDoDAO {

	List<ToDoVO> selectSearchTodoList(SearchCriteria cri)throws SQLException;
	
	int selectSearchTodoListCount(SearchCriteria cri)throws SQLException;

	ToDoVO selectTodoByTNO(int tno)throws SQLException;
	
	int selectTodoSequenceNextValue()throws SQLException;
	
	void insertTodo(ToDoVO todo)throws SQLException;
	
	void updateTodo(ToDoVO todo)throws SQLException;
	
	void deleteTodo(int tno)throws SQLException;
	
}
