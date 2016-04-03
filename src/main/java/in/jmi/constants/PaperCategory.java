package in.jmi.constants;

public enum PaperCategory {
	
	QUALIFYING_PAPER("Qualifying Paper","QUALIFYING_PAPER"),
	COMPULSARY_COURSE("Compulsary Course","COMPULSARY_COURSE"),
	CORE_COURSE_HONS("Core Course Hons","CORE_COURSE_HONS"),
	CORE_COURSE_SUBSIDIARY("Core Course Subsidiary","CORE_COURSE_SUBSIDIARY"),
	CHOICE_BASED_COURSE("Choice Based Course","CHOICE_BASED_COURSE"),
	SKILL_ENHANCEMENT_COURSE("Skill Enhancement Course","SKILL_ENHANCEMENT_COURSE"),
	ABILITY_SKILL_ENHANCEMENT("Ability Skill Enhancement","ABILITY_SKILL_ENHANCEMENT"),
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
