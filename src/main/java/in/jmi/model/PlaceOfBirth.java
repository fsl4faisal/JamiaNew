package in.jmi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="PLACE_OF_BIRTH")
public class PlaceOfBirth extends BaseEntity{
	
	@Column(name="TOWN",nullable=false)
	@NotEmpty(message="Town: Town can not be empty")
	private String town;
	
	@Column(name="DISTT",nullable=false)
	@NotEmpty(message="Distt: Distt. can not be empty")
	private String distt;
	
	@Column(name="STATE",nullable=false)
	@NotEmpty(message="State: State can not be empty")
	private String state;

	public PlaceOfBirth(){}
	
	public String getTown() {
		return town;
	}

	public String getDistt() {
		return distt;
	}

	public String getState() {
		return state;
	}

	
	public void setTown(String town) {
		this.town = town;
	}

	public void setDistt(String distt) {
		this.distt = distt;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "\nPlaceOfBirth [town=" + town + ", distt=" + distt + ", state="
				+ state + "]";
	}
	

}
