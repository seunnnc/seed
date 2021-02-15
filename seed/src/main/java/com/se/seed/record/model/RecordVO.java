package com.se.seed.record.model;

public class RecordVO {
	private int i_record;
	private int i_user;
	private String content;
	private String created_date;
	private String modified_date;
	
	public int getI_record() {
		return i_record;
	}
	public void setI_record(int i_record) {
		this.i_record = i_record;
	}
	public int getI_user() {
		return i_user;
	}
	public void setI_user(int i_user) {
		this.i_user = i_user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
