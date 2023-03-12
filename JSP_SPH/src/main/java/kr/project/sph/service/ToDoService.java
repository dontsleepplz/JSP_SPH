package kr.project.sph.service;

import java.sql.SQLException;
import java.util.Map;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ToDoVO;

public interface ToDoService {

	Map<String,Object> getTodoList(SearchCriteria cri)throws SQLException;
	
	ToDoVO getTodoByTNO(int tno)throws SQLException;
	
	void registTodo(ToDoVO todo)throws SQLException;
	
	void modifyTodo(ToDoVO todo)throws SQLException;
	
	void removeTodo(int tno)throws SQLException;
}
