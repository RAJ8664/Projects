package com.roy.raj.Todo.web.Application.service.Implementation;

import java.util.List;
import java.util.ArrayList;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roy.raj.Todo.web.Application.Exception.ResourceNotFoundException;
import com.roy.raj.Todo.web.Application.Repository.TodoJpaRepository;
import com.roy.raj.Todo.web.Application.dto.TodoDto;
import com.roy.raj.Todo.web.Application.entity.Todo;
import com.roy.raj.Todo.web.Application.service.TodoService;


@Service
public class TodoServiceImplementation implements TodoService{

	@Autowired
	private TodoJpaRepository repository;

	@Autowired
	private ModelMapper modelMapper;


	@Override
	public TodoDto addTodo(TodoDto new_Todo) {
		//convert the new_tododto to todo jpa entity
		Todo current_todo = modelMapper.map(new_Todo, Todo.class);

		Todo savedTodo = repository.save(current_todo);
		
		//convert todo jpa entity to tododto object;
		TodoDto savedTodoDto = modelMapper.map(savedTodo, TodoDto.class);

		return savedTodoDto;
	}

	@Override
	public TodoDto getTodo(Long id) {
		Todo current_todo = repository.findById(id)
		                              .orElseThrow(() -> new ResourceNotFoundException("Todo does not exist with that id"));
		return modelMapper.map(current_todo, TodoDto.class);
	}

	@Override
	public void deleteTodo(Long id) {
		Todo current_todo = repository.findById(id)
									  .orElseThrow(() -> new ResourceNotFoundException("Todo does not exist with that id"));
		repository.deleteById(id);
	}

	@Override
	public List<TodoDto> getAllTodo() {
		List<Todo> res = repository.findAll();
		List<TodoDto> answer = new ArrayList<>();
		for (Todo current : res) {
			answer.add(modelMapper.map(current, TodoDto.class));
		}
		return answer;
	}

	@Override
	public TodoDto updateCompleted(Long id, String completed) {
		Todo current_todo = repository.findById(id)
			                          .orElseThrow(() -> new ResourceNotFoundException("NO SUCH ID EXIST"));
		repository.deleteById(id);

		TodoDto current_todoDto = modelMapper.map(current_todo, TodoDto.class);
		current_todoDto.setCompleted(completed);
		
		Todo to_add = modelMapper.map(current_todoDto, Todo.class);
		repository.save(to_add);
		
		return current_todoDto;
	}

	@Override
	public TodoDto updateTitle(Long id, String title) {
		Todo current_todo = repository.findById(id)
			                          .orElseThrow(() -> new ResourceNotFoundException("NO SUCH ID EXIST"));
		repository.deleteById(id);

		TodoDto current_todoDto = modelMapper.map(current_todo, TodoDto.class);
		current_todoDto.setTitle(title);
		
		Todo to_add = modelMapper.map(current_todoDto, Todo.class);
		repository.save(to_add);
		
		return current_todoDto;
	}

	@Override
	public TodoDto updateDescription(Long id, String description) {
		Todo current_todo = repository.findById(id)
			                          .orElseThrow(() -> new ResourceNotFoundException("NO SUCH ID EXIST"));
		repository.deleteById(id);

		TodoDto current_todoDto = modelMapper.map(current_todo, TodoDto.class);
		current_todoDto.setDescription(description);
		
		Todo to_add = modelMapper.map(current_todoDto, Todo.class);
		repository.save(to_add);
		
		return current_todoDto;
	}
	

}
