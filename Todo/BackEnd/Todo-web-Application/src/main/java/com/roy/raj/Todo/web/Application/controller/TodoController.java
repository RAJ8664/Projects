package com.roy.raj.Todo.web.Application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import com.roy.raj.Todo.web.Application.dto.TodoDto;
import com.roy.raj.Todo.web.Application.service.TodoService;

@RestController
public class TodoController {
	
	@Autowired
	private TodoService service;

	@RequestMapping(method = RequestMethod.POST, path = "/todos")
	public ResponseEntity<?> addTodo(@RequestBody TodoDto new_Todo) {
		TodoDto saved_Todo = service.addTodo(new_Todo);
		return new ResponseEntity<>(saved_Todo, HttpStatus.CREATED);
	}

	@RequestMapping(method = RequestMethod.GET, path = "/todos/{id}")
	public ResponseEntity<?> addTodo(@PathVariable long id) {
		TodoDto current_tododto = service.getTodo(id);
		return new ResponseEntity<>(current_tododto, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.DELETE , path = "todos/{id}")
	public ResponseEntity<?> deleteTodo(@PathVariable long id) {
		service.deleteTodo(id);
		return new ResponseEntity<>(HttpStatus.OK);
	}


	@RequestMapping(method = RequestMethod.GET, path = "/todos")
	public ResponseEntity<?> getAllTodo() {
		List<TodoDto> res = service.getAllTodo();
		return new ResponseEntity<>(res, HttpStatus.OK);
	}


	@RequestMapping(method = RequestMethod.PUT, path = "/todos/completed/{id}/{completed}")
	public ResponseEntity<?> changeCompletedById(@PathVariable long id, @PathVariable String completed) {
		TodoDto res = service.updateCompleted(id, completed);
		return new ResponseEntity<>(res, HttpStatus.OK);
	}
	
	
	@RequestMapping(method = RequestMethod.PUT, path = "/todos/title/{id}/{title}")
	public ResponseEntity<?> changeTitleById(@PathVariable long id, @PathVariable String title) {
		TodoDto res = service.updateTitle(id, title);
		return new ResponseEntity<>(res, HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.PUT, path = "/todos/description/{id}/{description}")
	public ResponseEntity<?> changeDescriptionById(@PathVariable long id, @PathVariable String description) {
		TodoDto res = service.updateDescription(id, description);
		return new ResponseEntity<>(res, HttpStatus.OK);
	}



}
