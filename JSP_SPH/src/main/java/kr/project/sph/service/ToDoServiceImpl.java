package kr.project.sph.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.project.sph.command.PageMaker;
import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dao.ToDoDAO;
import kr.project.sph.dto.ToDoVO;

public class ToDoServiceImpl implements ToDoService {

	private ToDoDAO todoDAO;
	public void setTodoDAO(ToDoDAO todoDAO) {
		this.todoDAO = todoDAO;
	}

	@Override
	public Map<String,Object> getTodoList(SearchCriteria cri) throws SQLException {
		List<ToDoVO> todoList = todoDAO.selectSearchTodoList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(todoDAO.selectSearchTodoListCount(cri));
		
		Map<String,Object> dataMap = new HashMap<String,Object>();

		dataMap.put("todoList", todoList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public ToDoVO getTodoByTNO(int tno) throws SQLException {
		ToDoVO todo = todoDAO.selectTodoByTNO(tno);
		
		return todo;
	}

	@Override
	public void registTodo(ToDoVO todo) throws SQLException {
		int tno =todoDAO.selectTodoSequenceNextValue();
		todo.setTno(tno);
		todoDAO.insertTodo(todo);
	}

	@Override
	public void modifyTodo(ToDoVO todo) throws SQLException {
		todoDAO.updateTodo(todo);
		
	}

	@Override
	public void removeTodo(int tno) throws SQLException {
		todoDAO.deleteTodo(tno);

	}

}
