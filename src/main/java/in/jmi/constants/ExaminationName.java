package in.jmi.constants;

public enum ExaminationName {
	
	BTECH_COMPUTER_ENGINEERING_EXAMINATION("B.Tech Computer Engineering Exam","BTECH_COMPUTER_ENGINEERING_EXAMINATION"),
	BTECH_MECHANICAL_ENGINEERING_EXAMINATION("B.Tech Mechanical Engineering Exam","BTECH_MECHANICAL_ENGINEERING_EXAMINATION"),
	BTECH_CIVIL_ENGINEERING_EXAMINATION("B.Tech Civil Engineering Exam","BTECH_CIVIL_ENGINEERING_EXAMINATION"),
	BTECH_ELECTRONICS_AND_COMMUNICATION_ENGINEERING_EXAMINATION("B.Tech E & C Engineering Exam","BTECH_ELECTRONICS_AND_COMMUNICATION_ENGINEERING_EXAMINATION"),
	BTECH_ELECTRICAL_ENGINEERING_EXAMINATION("B.Tech Electrical Engineering Exam","BTECH_ELECTRICAL_ENGINEERING_EXAMINATION");
	
	private String name,value;
	
	private ExaminationName(String name,String value){
		this.name=name;
		this.value=value;
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
