package com.se.seed.record.model;

public class CategoryVO {
	private int i_category_color;
	private String color_code;
	
	private int i_category;
	private int i_user;
	private String category_name;
	
	private String created_date;
	private String modified_date;
	
	public int getI_category_color() {
		return i_category_color;
	}
	public void setI_category_color(int i_category_color) {
		this.i_category_color = i_category_color;
	}
	public String getColor_code() {
		return color_code;
	}
	public void setColor_code(String color_code) {
		this.color_code = color_code;
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
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
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
