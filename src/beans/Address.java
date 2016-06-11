package beans;

import com.fasterxml.jackson.annotation.JsonProperty;

/* This bean represents an address */
public class Address {
	private int id;
	private String street;
	private String town;
	private String postCode;
	
	public Address(@JsonProperty("id")int id, @JsonProperty("street")String street, @JsonProperty("town")String town, @JsonProperty("postCode")String postCode) {
		this.id = id;
		this.street = street;
		this.town = town;
		this.postCode = postCode;
	}
	
	public Address(String street, String town, String postCode) {
		this.street = street;
		this.town = town;
		this.postCode = postCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	
}
