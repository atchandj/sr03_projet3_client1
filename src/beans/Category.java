package beans;

import com.fasterxml.jackson.annotation.JsonProperty;

/* This bean represents a category */
public class Category {
	private int id;
	private String name;
	
	public Category(@JsonProperty("id")int id, @JsonProperty("name")String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public Category(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
