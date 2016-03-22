package in.jmi.constants;

public enum Role {
	ADMIN("Admin", "ADMIN"), 
	HEAD_OF_DEPARTMENT("Head of Department", "HEAD_OF_DEPARTMENT"),
	STUDENT("Student","STUDENT");

	private String name, value;

	private Role(String name, String value) {
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
