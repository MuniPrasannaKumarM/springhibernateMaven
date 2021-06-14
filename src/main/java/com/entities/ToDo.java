package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="todoapp")
public class ToDo {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	@Column(name="title")
	private String toDoTitle;
	@Column(name="notes")
	private String toDoContent;
	@Column(name="date")
	private String todoDate;
	
	public ToDo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ToDo(String toDoTitle, String toDoContent, String todoDate) {
		super();
		this.toDoTitle = toDoTitle;
		this.toDoContent = toDoContent;
		this.todoDate = todoDate;
	}
	public String getToDoTitle() {
		return toDoTitle;
	}
	public void setToDoTitle(String toDoTitle) {
		this.toDoTitle = toDoTitle;
	}
	public String getToDoContent() {
		return toDoContent;
	}
	public void setToDoContent(String toDoContent) {
		this.toDoContent = toDoContent;
	}
	public String getTodoDate() {
		return todoDate;
	}
	public void setTodoDate(String todoDate) {
		this.todoDate = todoDate;
	}
	@Override
	public String toString() {
		return "ToDo [Id=" + Id + ", toDoTitle=" + toDoTitle + ", toDoContent=" + toDoContent + ", todoDate=" + todoDate
				+ "]";
	}
	
	
}
