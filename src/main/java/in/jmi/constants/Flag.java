package in.jmi.constants;

public enum Flag {
	YES("Yes","YES"),
	NO("No","NO");
	
	private String value,name;
	
	private Flag(String name,String value){
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
