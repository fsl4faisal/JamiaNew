package in.jmi.constants;

public enum MediumOfExamination {
	ENGLISH("English", "ENGLISH");

	private String name, value;

	private MediumOfExamination(String name, String value) {
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
