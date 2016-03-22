package in.jmi.constants;

public enum DepartmentName {
	BTECH_COMPUTER_ENGINEERING("B.Tech Computer Engineering",
			"BTECH_COMPUTER_ENGINEERING"),
			BTECH_MECHANICAL_ENGINEERING(
			"B.Tech Mechanical Engineering", "BTECH_MECHANICAL_ENGINEERING"),
			BTECH_CIVIL_ENGINEERING(
			"B.Tech Civil Engineering", "BTECH_CIVIL_ENGINEERING"), 
			BTECH_ELECTRONICS_AND_COMMUNICATION_ENGINEERING(
			"B.Tech E & C Engineering",
			"BTECH_ELECTRONICS_AND_COMMUNICATION_ENGINEERING"), 
			BTECH_ELECTRICAL_ENGINEERING(
			"B.Tech Electrical Engineering", "BTECH_ELECTRICAL_ENGINEERING");

	private String name, value;

	private DepartmentName(String name, String value) {
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
