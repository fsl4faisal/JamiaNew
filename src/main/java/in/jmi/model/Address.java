package in.jmi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="ADDRESS")
public class Address extends BaseEntity{
	
	@Column(name="STREET",nullable=false)
	@NotEmpty(message="Street: Street can not be empty")
	private String street;
	
	@Column(name="CITY",nullable=false)
	@NotEmpty(message="City: City can not be empty")
	private String city;
	
	@Column(name="STATE",nullable=false)
	@NotEmpty(message="State: State can not be empty")
	private String state;
	
	@Column(name="PINCODE",nullable=false)
	@NotEmpty(message="Pincode:Pincode can not be left blank")//HV000030: No validator could be found for type: java.lang.Integer.
	@Pattern(regexp = "[\\d]{6}", message = "Pincode: Pincode can only be 6 digits number")
	private String pincode;

	public Address(){}
	
	public String getStreet() {
		return street;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public String getPincode() {
		return pincode;
	}


	
	public void setStreet(String street) {
		this.street = street;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "\nAddress [street=" + street + ", city=" + city + ", state="
				+ state + ", pincode=" + pincode + "]";
	}
	

}
