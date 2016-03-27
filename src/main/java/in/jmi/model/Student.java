package in.jmi.model;

import in.jmi.constants.CourseType;
import in.jmi.constants.ExaminationName;
import in.jmi.constants.Flag;
import in.jmi.constants.Gender;
import in.jmi.constants.MediumOfExamination;
import in.jmi.constants.Semester;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "STUDENT")
public class Student extends UrlEntity {

	@Transient
	MultipartFile studentPhoto;

	@Column(name = "COURSE_TYPE", nullable = false)
	@NotNull(message = "Course Type: Course Type can not be left blank")
	private in.jmi.constants.CourseType courseType;

	@OneToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "STUDENT_USER")
	@Valid
	private User user;

	@Column(name = "EXAMINATION_NAME", nullable = false)
	@NotNull(message = "Examination: Examination Name can not be left blank")
	private ExaminationName examinationName;

	@Column(name = "SEMESTER_NAME", nullable = false)
	@NotNull(message = "Part/Semester: Semester Name can not be left blank")
	private Semester semesterName;

	@Column(name = "YEAR", nullable = false)
	@Range(min = 2016, max = 2017, message = "Year: year must be in between 2016 and 2017")
	@NotNull(message = "Year: Year can not be left blank")
	private String year;

	@Column(name = "DATE_OF_BIRTH", nullable = false)
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@NotNull(message = "Date of Birth: Date of Birth can not be left blank")
	// working perfectly
	private Date dateOfBirth;

	@OneToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "STUDENT_PLACE_OF_BIRTH")
	@Valid
	private PlaceOfBirth placeOfBirth;

	@Column(name = "NATIONALITY", nullable = false)
	@NotEmpty(message = "Nationality: Nationality can not be empty")
	private String nationality;

	@Column(name = "RELIGION", nullable = false)
	@NotEmpty(message = "Religion: Religion can not be empty")
	private String religion;

	@Column(name = "GENDER", nullable = false)
	@NotNull(message = "Gender: Gender can not be left blank")
	private Gender gender;

	@Column(name = "FATHER_NAME", nullable = false)
	@NotEmpty(message = "Father's Name: Father's name can not be empty")
	private String fatherName;

	@Column(name = "MOTHER_NAME", nullable = false)
	@NotEmpty(message = "Mother's Name: Mother's Name can not be empty")
	private String motherName;

	@Column(name = "SPOUSE_NAME", nullable = false)
	@NotEmpty(message = "Spouse's Name: Spouse's Name can not be empty")
	private String spouseName;

	@OneToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "STUDENT_CORRESPONDENCE_ADDRESS")
	@Valid
	private Address correspondenceAddress;

	@JoinColumn(name = "STUDENT_PERMANENT_ADDRESS")
	@OneToOne(cascade = CascadeType.ALL, optional = false)
	@Valid
	private Address permanentAddress;

	@Column(name = "MOBILE_NUMBER", nullable = false)
	@Pattern(regexp = "[\\d]{10}", message = "Mobile Number: Mobile number can only be 10 digits number")
	private String mobileNumber;

	@Column(name = "MEDIUM_OF_EXAMINATION", nullable = false)
	@NotNull(message = "Medium of Examination: Medium of examination can not be left blank")
	private MediumOfExamination mediumOfExamination;

	@NotEmpty(message = "Enrollment Number: Enrollment Number can not be empty")
	@Column(name = "ENROLLMENT_NUMBER", nullable = false)
	private String enrollmentNumber;

	@Column(name = "QUOTA_FLAG", nullable = false)
	@NotNull(message = "Belong to S.C/S.T/O.B.C: Field can not be left blank")
	private Flag quotaFlag;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "STUDENT_DISQUALIFIED_DESCRIPTION")
	@Valid
	private DisqualifiedDescription disqualifiedDescription;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Subject> subjectTaken;

	@Column(name = "APPROVED_BY_HOD")
	private Flag approveByHodFlag;

	@Column(name = "STUDENT_ID", nullable = false)
	@Pattern(regexp = "[\\d]{6}", message = "Student Id: Student id can be 6 digits number only")
	private String studentId;

	public Student() {
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public ExaminationName getExaminationName() {
		return examinationName;
	}

	public void setExaminationName(ExaminationName examinationName) {
		this.examinationName = examinationName;
	}

	public Semester getSemesterName() {
		return semesterName;
	}

	public void setSemesterName(Semester semesterName) {
		this.semesterName = semesterName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public PlaceOfBirth getPlaceOfBirth() {
		return placeOfBirth;
	}

	public void setPlaceOfBirth(PlaceOfBirth placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getSpouseName() {
		return spouseName;
	}

	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}

	public Address getCorrespondenceAddress() {
		return correspondenceAddress;
	}

	public void setCorrespondenceAddress(Address correspondenceAddress) {
		this.correspondenceAddress = correspondenceAddress;
	}

	public Address getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public MediumOfExamination getMediumOfExamination() {
		return mediumOfExamination;
	}

	public void setMediumOfExamination(MediumOfExamination mediumOfExamination) {
		this.mediumOfExamination = mediumOfExamination;
	}

	public String getEnrollmentNumber() {
		return enrollmentNumber;
	}

	public void setEnrollmentNumber(String enrollmentNumber) {
		this.enrollmentNumber = enrollmentNumber;
	}

	public Flag getQuotaFlag() {
		return quotaFlag;
	}

	public void setQuotaFlag(Flag quotaFlag) {
		this.quotaFlag = quotaFlag;
	}

	public DisqualifiedDescription getDisqualifiedDescription() {
		return disqualifiedDescription;
	}

	public void setDisqualifiedDescription(
			DisqualifiedDescription disqualifiedDescription) {
		this.disqualifiedDescription = disqualifiedDescription;
	}

	public Set<Subject> getSubjectTaken() {
		return subjectTaken;
	}

	public void setSubjectTaken(Set<Subject> subjectTaken) {
		this.subjectTaken = subjectTaken;
	}

	public Flag getApproveByHodFlag() {
		return approveByHodFlag;
	}

	public void setApproveByHodFlag(Flag approveByHodFlag) {
		this.approveByHodFlag = approveByHodFlag;
	}

	public CourseType getCourseType() {
		return courseType;
	}

	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public MultipartFile getStudentPhoto() {
		return studentPhoto;
	}

	public void setStudentPhoto(MultipartFile studentPhoto) {
		this.studentPhoto = studentPhoto;
	}

	@Override
	public String toString() {
		return "Student [studentPhoto=" + studentPhoto + ", courseType="
				+ courseType + ", user=" + user + ", examinationName="
				+ examinationName + ", semesterName=" + semesterName
				+ ", year=" + year + ", dateOfBirth=" + dateOfBirth
				+ ", placeOfBirth=" + placeOfBirth + ", nationality="
				+ nationality + ", religion=" + religion + ", gender=" + gender
				+ ", fatherName=" + fatherName + ", motherName=" + motherName
				+ ", spouseName=" + spouseName + ", correspondenceAddress="
				+ correspondenceAddress + ", permanentAddress="
				+ permanentAddress + ", mobileNumber=" + mobileNumber
				+ ", mediumOfExamination=" + mediumOfExamination
				+ ", enrollmentNumber=" + enrollmentNumber + ", quotaFlag="
				+ quotaFlag + ", disqualifiedDescription="
				+ disqualifiedDescription + ", subjectTaken=" + subjectTaken
				+ ", approveByHodFlag=" + approveByHodFlag + ", studentId="
				+ studentId + "]";
	}

}
