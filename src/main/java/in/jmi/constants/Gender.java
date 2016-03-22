package in.jmi.constants;

public enum Gender {
	MALE("Male","MALE"), 
	FEMALE("Female","FEMALE"), 
	TRANS_GENDER("Trans Gender","TRANS_GENDER");

	private String name, value;

	private Gender(String name, String value) {
		this.name = name;
		this.value = value;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	
}
