package in.jmi.constants;

public enum Semester {

	SEMESTER_I("Semester I","SEMESTER_I"),
	SEMESTER_II("Semester II","SEMESTER_II"),
	SEMESTER_III("Semester III","SEMESTER_III"),
	SEMESTER_IV("Semester IV","SEMESTER_IV"),
	SEMESTER_V("Semester V","SEMESTER_V"),
	SEMESTER_VI("Semester VI","SEMESTER_VI"),
	SEMESTER_VII("Semester VII","SEMESTER_VII"),
	SEMESTER_VIII("Semester VIII","SEMESTER_VIII");
	
	private String name;
	private String value;
	
	private Semester(String name,String value){
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
