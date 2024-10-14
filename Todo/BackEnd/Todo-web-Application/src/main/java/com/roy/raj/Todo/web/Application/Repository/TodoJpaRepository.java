package com.roy.raj.Todo.web.Application.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.roy.raj.Todo.web.Application.entity.Todo;

public interface TodoJpaRepository extends JpaRepository<Todo , Long>{
	
}
