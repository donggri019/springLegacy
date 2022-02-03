package com.spring.legacy.object;

import java.io.Serializable;

import lombok.Data;

@Data
public class User implements Serializable {
	
	private static final long serialVersionUID = -5290060325598889837L;
	
	private Integer id;
	private String 	name;
	private String 	gender;
	private String 	city;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
