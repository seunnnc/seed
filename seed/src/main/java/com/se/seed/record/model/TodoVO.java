package com.se.seed.record.model;

public class TodoVO {
	private int i_task;
	private int i_category;
	private int i_user;
	private String todo_ctnt;
	private String created_date;
	private String modified_date;
	
	public int getI_task() {
		return i_task;
	}
	public void setI_task(int i_task) {
		this.i_task = i_task;
	}
	public int getI_category() {
		return i_category;
	}
	public void setI_category(int i_category) {
		this.i_category = i_category;
	}
	public int getI_user() {
		return i_user;
	}
	public void setI_user(int i_user) {
		this.i_user = i_user;
	}
	public String getTodo_ctnt() {
		return todo_ctnt;
	}
	public void setTodo_ctnt(String todo_ctnt) {
		this.todo_ctnt = todo_ctnt;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getModified_date() {
		return modified_date;
	}
	public void setModified_date(String modified_date) {
		this.modified_date = modified_date;
	}
}
