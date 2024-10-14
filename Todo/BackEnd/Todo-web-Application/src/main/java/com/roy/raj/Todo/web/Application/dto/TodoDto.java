package com.roy.raj.Todo.web.Application.dto;

public class TodoDto {
	private Long id;
	private String title;
	private String description;
	private String completed;

	public TodoDto(){}
	public TodoDto(Long id, String title, String description, String completed){
		this.id = id;
		this.title = title;
		this.description = description;
		this.completed = completed;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String isCompleted() {
		return this.completed;
	}

	public String getCompleted() {
		return this.completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	@Override
	public String toString() {
		return "{" +
			" id='" + getId() + "'" +
			", title='" + getTitle() + "'" +
			", description='" + getDescription() + "'" +
			", completed='" + isCompleted() + "'" +
			"}";
	}
}
	
