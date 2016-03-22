package in.jmi.constants;

public enum CourseType {
	
	UG("Under graduate","UG"),
	PG("Post graduate","PG");
	
	private String value,name;
	
	private CourseType(String name,String value){
		this.name=name;
		this.value=value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


}
