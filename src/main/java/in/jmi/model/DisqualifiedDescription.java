package in.jmi.model;

import in.jmi.constants.Flag;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="DISQUALIFIED_DESCRIPTION")
public class DisqualifiedDescription extends BaseEntity{
	
	@Column(name = "DISQUALIFIED_FLAG")
	@NotNull(message="Disqualified flag can not be left blank")
	private Flag disqualifiedFlag;
	
	@Column(name="PREVIOUS_UNIVERSITY_BOARD_NAME")
	private String previousUniversityBoardName;
	
	@Column(name="PREVIOUS_EXAMINATION_NAME")
	private String previousExaminationName;
	
	@Column(name="PREVIOUS_YEAR")
	private String previousYear;
	
	@Column(name="PREVIOUS_ENROLLMENT_NUMBER")
	private String previousEnrollmentNumber;
	
	@Column(name="PREVIOUS_ROLL_NUMBER")
	private String previousRollNumber;
	
	@Column(name="PERIOD_OF_PUNISHMENT")
	private String periodOfPunishment;
		
	public DisqualifiedDescription(){}

	

	public String getPreviousUniversityBoardName() {
		return previousUniversityBoardName;
	}

	public void setPreviousUniversityBoardName(String previousUniversityBoardName) {
		this.previousUniversityBoardName = previousUniversityBoardName;
	}

	public String getPreviousExaminationName() {
		return previousExaminationName;
	}

	public void setPreviousExaminationName(String previousExaminationName) {
		this.previousExaminationName = previousExaminationName;
	}

	public String getPreviousYear() {
		return previousYear;
	}

	public void setPreviousYear(String previousYear) {
		this.previousYear = previousYear;
	}

	public String getPreviousEnrollmentNumber() {
		return previousEnrollmentNumber;
	}

	public void setPreviousEnrollmentNumber(String previousEnrollmentNumber) {
		this.previousEnrollmentNumber = previousEnrollmentNumber;
	}

	public String getPreviousRollNumber() {
		return previousRollNumber;
	}

	public void setPreviousRollNumber(String previousRollNumber) {
		this.previousRollNumber = previousRollNumber;
	}

	public String getPeriodOfPunishment() {
		return periodOfPunishment;
	}

	public void setPeriodOfPunishment(String periodOfPunishment) {
		this.periodOfPunishment = periodOfPunishment;
	}

	
	public Flag getDisqualifiedFlag() {
		return disqualifiedFlag;
	}



	public void setDisqualifiedFlag(Flag disqualifiedFlag) {
		this.disqualifiedFlag = disqualifiedFlag;
	}


	@Override
	public String toString() {
		return "DisqualifiedDescription [disqualifiedFlag=" + disqualifiedFlag
				+ ", previousUniversityBoardName="
				+ previousUniversityBoardName + ", previousExaminationName="
				+ previousExaminationName + ", previousYear=" + previousYear
				+ ", previousEnrollmentNumber=" + previousEnrollmentNumber
				+ ", previousRollNumber=" + previousRollNumber
				+ ", periodOfPunishment=" + periodOfPunishment + "]";
	}


		
}
	