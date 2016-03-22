package in.jmi.constants;

public enum PaperCategory {
	
	COMPULSARY_COURSE("Compulsary Course","COMPULSARY_COURSE"),
	CORE_COURSE("Core Course","CORE_COURSE"),
	CHOICE_BASED_COURSE("Choice Based Course","CHOICE_BASED_COURSE"),
	SKILL_ENHANCEMENT_COURSE("Skill Enhancement Course","SKILL_ENHANCEMENT_COURSE"),
	ABILITY_ENHANCEMENT_COURSE("Ability Enhancement Course","ABILITY_ENHANCEMENT_COURSE"),
	AUDIT_COURSE("Audit Course","AUDIT_COURSE");
	
	private String name;
	private String value;
	
	private PaperCategory(String name,String value){
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
