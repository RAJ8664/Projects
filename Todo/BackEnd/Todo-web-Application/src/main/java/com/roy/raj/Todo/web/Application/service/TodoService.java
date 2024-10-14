package com.roy.raj.Todo.web.Application.service;

import com.roy.raj.Todo.web.Application.dto.TodoDto;
import java.util.List;

public interface TodoService {

	TodoDto addTodo(TodoDto new_Todo);	
	TodoDto getTodo(Long id);
	void deleteTodo(Long id);
	List<TodoDto> getAllTodo();
	TodoDto updateCompleted(Long id, String completed);
	TodoDto updateTitle(Long id, String title);
	TodoDto updateDescription(Long id, String description);
}
